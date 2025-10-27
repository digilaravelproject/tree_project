@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <main class="container-fluid py-5">
        <div class="d-flex justify-content-between align-items-center mb-4">
            <h4 class="main-title mb-0">Notes</h4>
            <a href="{{ route('notes.create') }}" class="btn btn-primary">+ Add Note</a>
        </div>

        <div class="card shadow-sm">
            <div class="card-body p-0">
                <table class="table table-bordered align-middle mb-0">
                    <thead class="table-light">
                        <tr>
                            <th>Title</th>
                            <th>Content</th>
                            <th style="width: 15%;" class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse ($notes as $note)
                            <tr>
                                <td>{{ $note->title }}</td>
                                <td>{{ Str::limit($note->content, 100) }}</td>
                                <td class="text-center">
                                    <a href="{{ route('notes.edit', $note->id) }}" class="btn btn-sm btn-info me-1">Edit</a>
                                    <form action="{{ route('notes.destroy', $note->id) }}" method="POST" class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Delete this note?')">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="3" class="text-center py-3">No notes found.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </main>
@endsection
