@extends('layouts.app')

@section('content')
    <div class="container">
        <h2 class="text-2xl mb-4 font-normal">Create Post</h2>

        {{-- Tampilkan error validasi --}}
        @if ($errors->any())
            <div class="alert alert-danger">
                <strong>Whoops!</strong> Ada kesalahan input:<br><br>
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif

        <form action="{{ route('posts.store') }}" method="post">
            @csrf
            <div class="mb-3">
                <label for="title" class="form-label">Title</label>
                <input 
                    type="text" 
                    name="title" 
                    id="title" 
                    class="form-control mb-2" 
                    placeholder="Title"
                    value="{{ old('title') }}" 
                    required>
            </div>

            <div class="mb-3">
                <label for="content" class="form-label">Content</label>
                <textarea 
                    name="content" 
                    id="content" 
                    class="form-control mb-2" 
                    placeholder="Content" 
                    rows="5"
                    required>{{ old('content') }}</textarea>
            </div>

            <button class="btn btn-success">Save</button>
            <a href="{{ route('posts.index') }}" class="btn btn-secondary">Cancel</a>
        </form>
    </div>
@endsection
