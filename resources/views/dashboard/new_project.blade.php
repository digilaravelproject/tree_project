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
                            <form class="row g-3 needs-validation" method="POST" action="{{ route('projects.store') }}"
                                novalidate>
                                @csrf

                                <div class="col-md-6">
                                    <label for="projectName" class="form-label">Project Name <span
                                            class="text-danger">*</span></label>
                                    <input type="text" name="project_name" class="form-control" id="projectName"
                                        placeholder="Enter project name" value="{{ old('project_name') }}" required>
                                    <div class="invalid-feedback">Please enter project name.</div>
                                </div>

                                <div class="col-md-6">
                                    <label for="state" class="form-label">
                                        State <span class="text-danger">*</span>
                                    </label>
                                    <select name="state" class="form-select" id="state" required>
                                        <option value="" disabled {{ old('state') ? '' : 'selected' }}>Select state
                                        </option>

                                        @foreach ($statemaster as $state)
                                            <option value="{{ $state->id }}"
                                                {{ old('state') == $state->state_name ? 'selected' : '' }}>
                                                {{ $state->state_name }}
                                            </option>
                                        @endforeach
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
                                    <label for="fieldOfficerName" class="form-label">
                                        Field Officer Name <span class="text-danger">*</span>
                                    </label>
                                    <select name="field_officer_name" id="fieldOfficerName" class="form-select" required>
                                        <option value="" disabled selected>Select field officer</option>
                                        @foreach ($officers as $officer)
                                            <option value="{{ $officer->id }}"
                                                {{ old('field_officer_name') == $officer->name ? 'selected' : '' }}>
                                                {{ $officer->name }}
                                            </option>
                                        @endforeach
                                    </select>
                                    <div class="invalid-feedback">Please select a field officer.</div>
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
