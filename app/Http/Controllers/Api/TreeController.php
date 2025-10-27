<?php

namespace App\Http\Controllers\Api;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\MtTree;
use App\Models\Project;
use App\Models\Family;
use App\Models\ScientificName;
use App\Models\Tree;
use Illuminate\Support\Facades\Validator;

class TreeController extends Controller
{
    // ✅ Create New Tree Record
    public function store(Request $request)
    {
        $validator = Validator::make($request->all(), [
            'tree_name' => 'required|string|max:255',
            'project_id' => 'nullable|integer',
            'tree_images.*' => 'image|mimes:jpeg,png,jpg|max:4096',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => false, 'errors' => $validator->errors()], 422);
        }

        $imagePaths = [];
        if ($request->hasFile('tree_images')) {
            foreach ($request->file('tree_images') as $file) {
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $destinationPath = public_path('tree_images');

                // Ensure directory exists
                if (!file_exists($destinationPath)) {
                    mkdir($destinationPath, 0777, true);
                }

                $file->move($destinationPath, $filename);
                $imagePaths[] = 'tree_images/' . $filename;
            }
        }

        // 💾 Save all columns from form
        $tree = MtTree::create([
            'project_id' => $request->project_id,
            'ward_plot_no' => $request->ward_plot_no,
            'tree_no' => $request->tree_no,
            'tree_name' => $request->tree_name,
            'scientific_name' => $request->scientific_name,
            'family' => $request->family,
            'girth' => $request->girth,
            'height' => $request->height,
            'canopy' => $request->canopy,
            'age' => $request->age,
            'condition' => $request->condition,
            'address' => $request->address,
            'landmark' => $request->landmark,
            'ownership' => $request->ownership,
            'concern_person' => $request->concern_person,
            'remark' => $request->remark,
            'tree_image_upload' => $request->tree_image_upload,
            'captured_image' => $request->captured_image,
            'all_captured_images' => json_encode($imagePaths),
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'datetime' => $request->datetime,
        ]);

        return response()->json([
            'status' => true,
            'message' => 'Tree record created successfully',
            'data' => $tree
        ]);
    }


    // ✅ Update Tree Record
    public function update(Request $request, $id)
    {
        $tree = MtTree::find($id);
        if (!$tree) {
            return response()->json(['status' => false, 'message' => 'Tree not found'], 404);
        }

        $imagePaths = json_decode($tree->all_captured_images ?? '[]', true);

        if ($request->hasFile('tree_images')) {
            foreach ($request->file('tree_images') as $file) {
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('tree_images'), $filename);
                $imagePaths[] = 'tree_images/' . $filename;
            }
        }

        $tree->update([
            'project_id' => $request->project_id,
            'ward_plot_no' => $request->ward_plot_no,
            'tree_no' => $request->tree_no,
            'tree_name' => $request->tree_name,
            'scientific_name' => $request->scientific_name,
            'family' => $request->family,
            'girth' => $request->girth,
            'height' => $request->height,
            'canopy' => $request->canopy,
            'age' => $request->age,
            'condition' => $request->condition,
            'address' => $request->address,
            'landmark' => $request->landmark,
            'ownership' => $request->ownership,
            'concern_person' => $request->concern_person,
            'remark' => $request->remark,
            'tree_image_upload' => $request->tree_image_upload,
            'captured_image' => $request->captured_image,
            'all_captured_images' => json_encode($imagePaths),
            'latitude' => $request->latitude,
            'longitude' => $request->longitude,
            'datetime' => $request->datetime,
        ]);

        return response()->json(['status' => true, 'message' => 'Tree record updated successfully', 'data' => $tree]);
    }

    // ✅ Delete
    public function destroy($id)
    {

        $tree = MtTree::find($id);
        if (!$tree) {
            return response()->json(['status' => false, 'message' => 'Tree not found'], 404);
        }

        $tree->delete();
        return response()->json(['status' => true, 'message' => 'Tree deleted successfully']);
    }

    // ✅ Get All
    public function index()
    {
        $trees = MtTree::latest()->get()->map(function ($tree) {
            $tree->all_captured_images = json_decode($tree->all_captured_images, true);
            return $tree;
        });
        return response()->json(['status' => true, 'data' => $trees]);
    }

    // ✅ Get Single
    public function show($id)
    {
        $tree = MtTree::find($id);

        if (!$tree) {
            return response()->json(['status' => false, 'message' => 'Tree not found'], 404);
        }
        $tree->all_captured_images = json_decode($tree->all_captured_images, true);

        $treeModel = Tree::where('id', $tree->tree_name)->first();
        $tree->tree_name = $treeModel ? $treeModel->name : $tree->tree_name;
        $scientificModel = ScientificName::where('id', $tree->scientific_name)->first();
        $tree->scientific_name = $scientificModel ? $scientificModel->scientific_name : $tree->scientific_name;
        $familyModel = Family::where('id', $tree->family)->first();
        $tree->family = $familyModel ? $familyModel->family_name : $tree->family;

        return response()->json([
            'status' => true,
            'data' => $tree
        ]);
    }

    public function dashboard_count()
    {
        try {
            $projectCount = Project::count();
            $treeCount = MtTree::count();

            return response()->json([
                'status' => true,
                'message' => 'Dashboard data fetched successfully',
                'data' => [
                    'project_count' => $projectCount,
                    'tree_count' => $treeCount,
                ],
            ]);
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Something went wrong: ' . $e->getMessage(),
            ], 500);
        }
    }
}
