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
        // ✅ Step 1: Validate request
        $validator = Validator::make($request->all(), [
            'tree_name' => 'required|string|max:255',
            'project_id' => 'required|integer|exists:projects,id', // ✅ Must exist in Projects table
            'tree_images.*' => 'image|mimes:jpeg,png,jpg|max:4096',
        ]);

        if ($validator->fails()) {
            return response()->json(['status' => false, 'errors' => $validator->errors()], 422);
        }

        // ✅ Step 2: Check if tree already exists for this project
        $existingTree = MtTree::where('project_id', $request->project_id)->first();
        if ($existingTree) {
            return response()->json([
                'status' => false,
                'message' => 'A tree record already exists for this project.'
            ], 409);
        }

        // ✅ Step 3: Handle image upload
        $imagePaths = [];
        if ($request->hasFile('tree_images')) {
            foreach ($request->file('tree_images') as $file) {
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $destinationPath = public_path('tree_images');

                if (!file_exists($destinationPath)) {
                    mkdir($destinationPath, 0777, true);
                }

                $file->move($destinationPath, $filename);
                $imagePaths[] = 'tree_images/' . $filename;
            }
        }

        // ✅ Step 4: Create tree record
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

        // ✅ Step 5: Success response
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

        // Decode old images
        $imagePaths = json_decode($tree->all_captured_images ?? '[]', true);

        // Handle new uploaded images
        if ($request->hasFile('tree_images')) {
            foreach ($request->file('tree_images') as $file) {
                $filename = time() . '_' . uniqid() . '.' . $file->getClientOriginalExtension();
                $file->move(public_path('tree_images'), $filename);
                $imagePaths[] = 'tree_images/' . $filename;
            }
        }

        // Collect data safely (no filter yet)
        $data = $request->only([
            'project_id',
            'ward_plot_no',
            'tree_no',
            'tree_name',
            'scientific_name',
            'family',
            'girth',
            'height',
            'canopy',
            'age',
            'condition',
            'address',
            'landmark',
            'ownership',
            'concern_person',
            'remark',
            'tree_image_upload',
            'captured_image',
            'latitude',
            'longitude',
            'datetime'
        ]);

        // Debug: check what we’re getting
        if (empty(array_filter($data))) {
            return response()->json([
                'status' => false,
                'message' => 'No valid fields provided for update',
                'received' => $request->all()
            ], 400);
        }

        // Add image array
        $data['all_captured_images'] = json_encode($imagePaths);

        // Update the record
        $tree->update($data);

        return response()->json([
            'status' => true,
            'message' => 'Tree record updated successfully',
            'updated_fields' => $data,
            'data' => $tree->fresh()
        ]);
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
        $trees = \App\Models\MtTree::latest()->get()->map(function ($tree) {
            // Decode image JSON
            $tree->all_captured_images = json_decode($tree->all_captured_images, true);
            $treeModel = Tree::where('id', $tree->tree_name)->first();
            $tree->tree_name = $treeModel ? $treeModel->name : $tree->tree_name;
            $scientificModel = ScientificName::where('id', $tree->scientific_name)->first();
            $tree->scientific_name = $scientificModel ? $scientificModel->scientific_name : $tree->scientific_name;
            $familyModel = Family::where('id', $tree->family)->first();
            $tree->family = $familyModel ? $familyModel->family_name : $tree->family;

            return $tree;
        });

        return response()->json([
            'status' => true,
            'data' => $trees
        ]);
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
