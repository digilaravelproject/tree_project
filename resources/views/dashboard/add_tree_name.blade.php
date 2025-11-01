@extends('layouts.app')
@section('title')
    | Create Tree Name
@endsection

@section('content')
    <div class="py-5 px-3">
        <div class="card shadow-sm border-0 w-100">
            <div class="card-header bg-success text-white">
                <h5 class="mb-0">Add New Tree</h5>
            </div>
            <div class="card-body px-4 py-4">
                <form action="{{ route('tree.name.added') }}" method="POST">
                    @csrf

                    <div class="row g-3">
                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Tree Name <span class="text-danger">*</span></label>
                            <input type="text" name="name" class="form-control" placeholder="Enter tree name"
                                required>
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Scientific Name <span class="text-danger">*</span></label>
                            <input type="text" name="scientific_name" class="form-control"
                                placeholder="Enter scientific name" required>
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Family Name <span class="text-danger">*</span></label>
                            <input type="text" name="family_name" class="form-control" placeholder="Enter family name"
                                required>
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Height Ratio</label>
                            <input type="text" name="height_ratio" class="form-control" placeholder="Enter height ratio">
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Age Ratio</label>
                            <input type="text" name="age_ratio" class="form-control" placeholder="Enter age ratio">
                        </div>

                        <div class="col-12 col-sm-6 col-md-6 col-lg-6">
                            <label class="form-label fw-semibold">Canopy Ratio</label>
                            <input type="text" name="canopy_ratio" class="form-control" placeholder="Enter canopy ratio">
                        </div>
                    </div>

                    <div class="text-end mt-4">
                        <button type="submit" class="btn btn-success px-4">Save</button>
                        <a href="" class="btn btn-secondary px-4">Cancel</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
