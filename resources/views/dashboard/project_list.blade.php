@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <!-- Body main section starts -->
    <main>
        <div class="container-fluid">

            @push('scripts')
                <script>
                    $(document).ready(function() {
                        @if (session('success'))
                            toastr.success("{{ session('success') }}");
                        @endif

                        @if (session('error'))
                            toastr.error("{{ session('error') }}");
                        @endif

                        @if (session('warning'))
                            toastr.warning("{{ session('warning') }}");
                        @endif

                        @if (session('info'))
                            toastr.info("{{ session('info') }}");
                        @endif
                    });
                </script>
            @endpush

            <!-- Breadcrumb start -->
            <div class="row m-1">
                <div class="col-12 ">
                    <h4 class="main-title mb-3">Project List</h4>
                </div>
            </div>
            <!-- Breadcrumb end -->

            <!-- Data Table start -->
            <div class="row">
                <div class="col-12">
                    <div class="card ">
                        <div class="card-body p-0">
                            <div class="app-datatable-default overflow-auto">
                                <table id="example" class="display app-data-table default-data-table">
                                    <thead>
                                        <tr>
                                            <th>Project Name</th>
                                            <th>Client Name</th>
                                            <th>State</th>
                                            <th>Company Name</th>
                                            <th>Created</th>
                                            <th>Officer Name</th>
                                            <th>Action</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($projects as $project)
                                            <tr>
                                                <td>{{ $project->project_name }}</td>
                                                <td>{{ $project->client_name ?? '-' }}</td>
                                                <td>{{ $project->state->state_name ?? '-' }}</td>
                                                <td>{{ $project->company_name ?? '-' }}</td>
                                                <td>{{ $project->created_at ?? '-' }}</td>

                                                <!-- ✅ Officer Name with rgb(79 201 218) background -->
                                                <td>
                                                    @php
                                                        $officerIds = json_decode($project->field_officer_id, true);
                                                    @endphp

                                                    @if (is_array($officerIds) && count($officerIds) > 0)
                                                        @php
                                                            $officers = \App\Models\User::whereIn('id', $officerIds)->pluck('name')->toArray();
                                                        @endphp

                                                        @foreach ($officers as $name)
                                                            <span style="
                                                                background-color: rgb(79 201 218);
                                                                color: #fff;
                                                                padding: 5px 10px;
                                                                border-radius: 8px;
                                                                margin-right: 4px;
                                                                display: inline-block;
                                                                font-size: 13px;
                                                                font-weight: 500;
                                                                ">
                                                                {{ $name }}
                                                            </span>
                                                        @endforeach
                                                    @else
                                                        -
                                                    @endif
                                                </td>

                                                <td>
                                                    <a href="{{ route('projects.edit', $project->id) }}"
                                                        class="btn btn-light-success icon-btn b-r-4">
                                                        <i class="ti ti-edit text-success"></i>
                                                    </a>

                                                    <form action="{{ route('projects.delete', $project->id) }}"
                                                        method="POST" style="display:inline-block;">
                                                        @csrf
                                                        @method('DELETE')
                                                        <button type="submit" class="btn btn-light-danger icon-btn b-r-4"
                                                            onclick="return confirm('Are you sure to delete this project?')">
                                                            <i class="ti ti-trash"></i>
                                                        </button>
                                                    </form>
                                                </td>
                                            </tr>
                                        @endforeach
                                    </tbody>

                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Data Table end -->
        </div>
    </main>
    <!-- Body main section ends -->
@endsection
