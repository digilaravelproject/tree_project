@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <!-- Body main section starts -->
    <main>
        <div class="container-fluid">

            <!-- Breadcrumb start -->
            <div class="row m-1">
                <div class="col-12 ">
                    <h4 class="main-title mb-3">Create New Project</h4>
                </div>
            </div>

            <div class="row">
                <!-- Custom Styles start -->
                <div class="col-12">
                    <div class="card">
                        <div class="card-body">
                            <form class="row g-3 needs-validation" method="POST" action="" novalidate>
                                @csrf

                                <div class="col-md-6">
                                    <label for="projectName" class="form-label">Project Name <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="project_name" class="form-control" id="projectName"
                                        placeholder="Enter project name" value="{{ old('project_name') }}" required>
                                    <div class="invalid-feedback">Please enter project name.</div>
                                </div>

                                <div class="col-md-6">
                                    <label for="state" class="form-label">State <span
                                            class="text-danger">*</span></label>
                                    <select name="state" class="form-select" id="state" required>
                                        <option value="" disabled {{ old('state') ? '' : 'selected' }}>Select state
                                        </option>
                                        <option value="Andhra Pradesh"
                                            {{ old('state') == 'Andhra Pradesh' ? 'selected' : '' }}>Andhra Pradesh</option>
                                        <option value="Delhi" {{ old('state') == 'Delhi' ? 'selected' : '' }}>Delhi
                                        </option>
                                        <option value="Haryana" {{ old('state') == 'Haryana' ? 'selected' : '' }}>Haryana
                                        </option>
                                        <option value="Maharashtra" {{ old('state') == 'Maharashtra' ? 'selected' : '' }}>
                                            Maharashtra</option>
                                        <option value="Tamil Nadu" {{ old('state') == 'Tamil Nadu' ? 'selected' : '' }}>
                                            Tamil Nadu</option>
                                        <option value="Uttar Pradesh"
                                            {{ old('state') == 'Uttar Pradesh' ? 'selected' : '' }}>Uttar Pradesh</option>
                                    </select>
                                    <div class="invalid-feedback">Please select a state.</div>
                                </div>

                                <div class="col-md-6">
                                    <label for="clientName" class="form-label">Client Name <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="client_name" class="form-control" id="clientName"
                                        placeholder="Enter client name" value="{{ old('client_name') }}" required>
                                    <div class="invalid-feedback">Please enter client name.</div>
                                </div>

                                <div class="col-md-6">
                                    <label for="companyName" class="form-label">Company Name <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="company_name" class="form-control" id="companyName"
                                        placeholder="Enter company name" value="{{ old('company_name') }}" required>
                                    <div class="invalid-feedback">Please enter company name.</div>
                                </div>

                                <div class="col-md-6">
                                    <label for="fieldOfficerName" class="form-label">Field Officer Name <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="field_officer_name" class="form-control"
                                        id="fieldOfficerName" placeholder="Enter field officer name"
                                        value="{{ old('field_officer_name') }}" required>
                                    <div class="invalid-feedback">Please enter field officer name.</div>
                                </div>

                                <div class="col-12 mt-3">
                                    <button class="btn btn-success" type="submit">Create Project</button>
                                    <button class="btn btn-secondary" type="reset">Cancel</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- Custom Styles end -->
            </div>

        </div>
    </main>
    <!-- Body main section ends -->
@endsection
