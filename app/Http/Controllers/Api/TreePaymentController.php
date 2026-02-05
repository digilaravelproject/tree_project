<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User;
use App\Models\MtTree;
use App\Models\UserPaidTree;
use App\Models\Wallet;
use Razorpay\Api\Api;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class TreePaymentController extends Controller
{
    // Test Keys (Jo aapne di hain)
    private $keyId = 'rzp_test_S9yXFuXcf0S6Ll';
    private $keySecret = '8esSABFrAQrY8r14S7T22Q4D';

    /**
     * 1. CREATE ORDER
     * Input: { "user_id": 1, "amount": 500, "tree_ids": [10, 12, 14] }
     */
    public function createOrder(Request $request)
    {
        
        $validator = Validator::make($request->all(), [
            'user_id'  => 'required|exists:users,id',
            'amount'   => 'required|numeric|min:1',
            'tree_ids' => 'required|array'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()->first()], 422);
        }

        $api = new Api($this->keyId, $this->keySecret);

        // Razorpay needs amount in Paise (Rs 1 = 100 Paise)
        $amountInPaise = $request->amount * 100;

        $orderData = [
            'receipt'         => 'rcpt_' . time(),
            'amount'          => $amountInPaise,
            'currency'        => 'INR',
            'notes'           => [
                'user_id'    => $request->user_id,
                'tree_count' => count($request->tree_ids)
            ]
        ];
// print_r($orderData);die;
        try {
            
            $razorpayOrder = $api->order->create($orderData);

            return response()->json([
                'success' => true,
                'message' => 'Order Created',
                'order_id' => $razorpayOrder['id'],
                'amount'   => $request->amount,
                'tree_ids' => $request->tree_ids,
                'key' => 'rzp_test_S9yXFuXcf0S6Ll',
                'key_secret' => '8esSABFrAQrY8r14S7T22Q4D'
            ]);
        } catch (\Exception $e) {
            return response()->json(['success' => false, 'message' => 'Razorpay Error: ' . $e->getMessage()], 500);
        }
    }

    /**
     * 2. VERIFY PAYMENT & UPDATE DB
     * Input: { "razorpay_order_id": "...", "razorpay_payment_id": "...", "razorpay_signature": "...", "user_id": 1, "amount": 500, "tree_ids": [10, 12, 14], "project_id": 5 }
     */
    public function verifyPayment(Request $request)
    {

        $validator = Validator::make($request->all(), [
            'razorpay_order_id'   => 'required',
            'razorpay_payment_id' => 'required',
            'razorpay_signature'  => 'required',
            'user_id'             => 'required|exists:users,id',
            'amount'              => 'required',
            'tree_ids'            => 'required|array'
        ]);

        if ($validator->fails()) {
            return response()->json(['success' => false, 'message' => $validator->errors()->first()], 422);
        }

        $api = new Api($this->keyId, $this->keySecret);

        try {
            // A. Verify Signature
            $attributes = [
                'razorpay_order_id'   => $request->razorpay_order_id,
                'razorpay_payment_id' => $request->razorpay_payment_id,
                'razorpay_signature'  => $request->razorpay_signature
            ];
            $api->utility->verifyPaymentSignature($attributes);

            // B. Start Database Update
            DB::beginTransaction();

            $treeIds = $request->tree_ids;
            $userId = $request->user_id;
            $projectId = $request->project_id ?? null;
            $amount = $request->amount;

            // 1. UPDATE MT_TREES (Payment = 1 means True)
            MtTree::whereIn('id', $treeIds)->update(['payment' => 1]);

            // 2. CREATE HISTORY (UserPaidTree)
            foreach ($treeIds as $treeId) {
                // Check duplicate
                if (!UserPaidTree::where('user_id', $userId)->where('mt_tree_id', $treeId)->exists()) {
                    UserPaidTree::create([
                        'user_id'     => $userId,
                        'project_id'  => $projectId,
                        'mt_tree_id'  => $treeId,
                        'payment_id'  => $request->razorpay_payment_id,
                        'amount'      => ($amount / count($treeIds)) // Avg price
                    ]);
                }
            }

            // 3. CREATE WALLET ENTRY
            Wallet::create([
                'user_id'             => $userId,
                'project_count'       => 0,
                'tree_count'          => count($treeIds),
                'razorpay_payment_id' => $request->razorpay_payment_id,
                'razorpay_order_id'   => $request->razorpay_order_id,
                'razorpay_signature'  => $request->razorpay_signature,
                'amount'              => $amount,
                'status'              => 'success'
            ]);

            DB::commit();

            return response()->json([
                'success' => true,
                'message' => 'Payment Verified & Trees Updated Successfully',
                'updated_count' => count($treeIds)
            ]);
        } catch (\Exception $e) {
            DB::rollBack();
            return response()->json(['success' => false, 'message' => 'Verification Failed: ' . $e->getMessage()], 500);
        }
    }
}
