@extends('layouts.app')

@section('title')
    | {{ $page_title }}
@endsection

@section('content')
<main>
    <div class="container-fluid">
        <div class="row">
            <div class="col-12">
                <div class="card">
                    <div class="card-header d-flex justify-content-between align-items-center">
                        <h4 class="mb-0">Permissions</h4>
                        <button class="btn btn-sm"
                                style="background-color: #7cb342; color: #ffffff;"
                                data-bs-toggle="modal"
                                data-bs-target="#createPermissionModal">
                            Create Permission
                        </button>
                    </div>

                    <div class="card-body p-0">
                        @if (session('success'))
                            <div class="alert alert-success m-3 mb-0">{{ session('success') }}</div>
                        @endif

                        @if ($errors->any())
                            <div class="alert alert-danger m-3 mb-0">
                                {{ $errors->first() }}
                            </div>
                        @endif

                        <div class="app-datatable-default overflow-auto">
                            <table id="example" class="display app-data-table default-data-table">
                                <thead>
                                    <tr>
                                        <th>SR NO</th>
                                        <th>Permission</th>
                                        <th>Group</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($permissions as $index => $permission)
                                        <tr>
                                            <td>{{ $index + 1 }}</td>
                                            <td>{{ $permission->name }}</td>
                                            <td>{{ ucwords(str_replace('_', ' ', explode('.', $permission->name)[0])) }}</td>
                                            <td>
                                                <button type="button"
                                                        class="btn icon-btn b-r-4 edit-permission-btn"
                                                        style="background-color: rgba(124, 179, 66, 0.1);"
                                                        data-name="{{ $permission->name }}"
                                                        data-update-url="{{ route('permissions.update', $permission) }}"
                                                        data-bs-toggle="modal"
                                                        data-bs-target="#editPermissionModal">
                                                    <i class="ti ti-edit" style="color: #7cb342;"></i>
                                                </button>

                                                <form action="{{ route('permissions.destroy', $permission) }}"
                                                      method="POST"
                                                      class="d-inline"
                                                      onsubmit="return confirm('Delete this permission? It will be removed from assigned roles and users.');">
                                                    @csrf
                                                    @method('DELETE')
                                                    <button type="submit" class="btn btn-light-danger icon-btn b-r-4">
                                                        <i class="ti ti-trash text-danger"></i>
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
    </div>
</main>

<div class="modal fade" id="createPermissionModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <form method="POST" action="{{ route('permissions.store') }}">
            @csrf
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Create Permission</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <label for="permission-name" class="form-label">Permission Name</label>
                    <input type="text"
                           name="name"
                           id="permission-name"
                           class="form-control"
                           placeholder="Example: project.export"
                           value="{{ old('name') }}"
                           required>
                    <small class="text-muted">Use a group and action format such as project.export.</small>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn" style="background-color: #7cb342; color: #ffffff;">Save</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </div>
        </form>
    </div>
</div>

<div class="modal fade" id="editPermissionModal" tabindex="-1" aria-hidden="true">
    <div class="modal-dialog">
        <form method="POST" id="editPermissionForm">
            @csrf
            @method('PUT')
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Update Permission</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal"></button>
                </div>
                <div class="modal-body">
                    <label for="edit-permission-name" class="form-label">Permission Name</label>
                    <input type="text" name="name" id="edit-permission-name" class="form-control" required>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn" style="background-color: #7cb342; color: #ffffff;">Update</button>
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancel</button>
                </div>
            </div>
        </form>
    </div>
</div>

<script>
document.addEventListener('DOMContentLoaded', function () {
    const editForm = document.getElementById('editPermissionForm');
    const editName = document.getElementById('edit-permission-name');

    document.querySelectorAll('.edit-permission-btn').forEach(button => {
        button.addEventListener('click', function () {
            editName.value = this.dataset.name;
            editForm.action = this.dataset.updateUrl;
        });
    });
});
</script>
@endsection
