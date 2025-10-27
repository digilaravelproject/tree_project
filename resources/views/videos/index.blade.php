@extends('layouts.app')
@section('title', $page_title)
@section('content')
    <main class="container py-5">
        <div class="d-flex justify-content-between mb-4">
            <h4>{{ $page_title }}</h4>
            <a href="{{ route('videos.create') }}" class="btn btn-primary">Upload Video</a>
        </div>


        <div class="card shadow-sm">
            <div class="card-body table-responsive">
                <table class="table table-hover table-bordered align-middle">
                    <thead class="table-light">
                        <tr>
                            <th>Title</th>
                            <th>Video</th>
                            <th>Uploaded At</th>
                            <th class="text-center">Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        @forelse($videos as $video)
                            <tr>
                                <td>{{ $video->title }}</td>
                                <td>
                                    <video width="200" controls>
                                        <source src="{{ asset('video/' . $video->video) }}" type="video/mp4">
                                        Your browser does not support the video tag.
                                    </video>
                                </td>
                                <td>{{ $video->created_at->format('d M, Y H:i') }}</td>
                                <td class="text-center">
                                    <a href="{{ route('videos.edit', $video->id) }}"
                                        class="btn btn-sm btn-info me-1">Edit</a>
                                    <form action="{{ route('videos.destroy', $video->id) }}" method="POST"
                                        class="d-inline">
                                        @csrf
                                        @method('DELETE')
                                        <button type="submit" class="btn btn-sm btn-danger"
                                            onclick="return confirm('Are you sure?')">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        @empty
                            <tr>
                                <td colspan="4" class="text-center">No videos uploaded.</td>
                            </tr>
                        @endforelse
                    </tbody>
                </table>
            </div>
        </div>
    </main>
@endsection
