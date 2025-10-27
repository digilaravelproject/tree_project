@extends('layouts.app')
@section('title', '| Edit Project')

@section('content')
    <main>
        <div class="container-fluid">
            <h4 class="main-title mb-3">Edit Project</h4>

            <form action="{{ route('projects.update', $project->id) }}" method="POST">
                @csrf
                <div class="row">
                    <div class="col-md-6 mb-3">
                        <label>Project Name</label>
                        <input type="text" name="project_name" class="form-control"
                            value="{{ old('project_name', $project->project_name) }}" required>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Client Name</label>
                        <input type="text" name="client_name" class="form-control"
                            value="{{ old('client_name', $project->client_name) }}">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>State</label>
                        <select name="state_id" class="form-select" required>
                            <option value="">Select State</option>
                            @foreach ($states as $state)
                                <option value="{{ $state->id }}"
                                    {{ $project->state_id == $state->id ? 'selected' : '' }}>
                                    {{ $state->state_name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Company Name</label>
                        <input type="text" name="company_name" class="form-control"
                            value="{{ old('company_name', $project->company_name) }}">
                    </div>
                    <div class="col-md-6 mb-3">
                        <label>Field Officer</label>
                        <select name="field_officer_id" class="form-select" required>
                            <option value="">Select Officer</option>
                            @foreach ($officers as $officer)
                                <option value="{{ $officer->id }}"
                                    {{ $project->field_officer_id == $officer->id ? 'selected' : '' }}>
                                    {{ $officer->name }}
                                </option>
                            @endforeach
                        </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Update Project</button>
            </form>
        </div>
    </main>
@endsection
