@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <main class="container-fluid py-5">
        <div class="card shadow-sm">
            <div class="card-header bg-info text-white">Edit Contact</div>
            <div class="card-body">
                <form action="{{ route('contacts.update', $contact->id) }}" method="POST">
                    @csrf
                    @method('PUT')
                    @include('contacts.form', ['contact' => $contact])
                    <button type="submit" class="btn btn-info text-white">Update</button>
                    <a href="{{ route('contacts.index') }}" class="btn btn-secondary">Cancel</a>
                </form>
            </div>
        </div>
    </main>
@endsection
