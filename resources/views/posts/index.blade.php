@extends('layouts.app')

@section('content')
    <div class="container mb-5">
        <h2 class="text-xl mb-4 font-semibold">Posts</h2> 
        <a href="{{ route('posts.create') }}" class="btn btn-md btn-primary">Add Post</a>
        <br><br>
        {{-- <p>Debug Auth Check: {{ auth()->check() ? 'YES' : 'NO' }}</p>
        <p>Debug User: {{ auth()->user() ? auth()->user()->name : 'Guest' }}</p> --}}
        @forelse ($posts as $post)
            <div class="card rounded-xl mb-3">
                <div class="card-body rounded-xl hover:shadow-lg p-4">
                    <h5 class="font-bold mb-3"> {{ $post->title }} </h5>
                    <hr class="divide-solid mb-3">
                    <p> {!! nl2br(e($post->content)) !!} </p>
                    <small>By {{ $post->user->name ?? 'Unknown User' }} </small>
                    <br><br>
                    @can('update', $post)
                        <a href="{{ route('posts.edit', $post) }}" class="btn btn-md btn-warning">Edit</a>
                    @endcan

                    @can('delete', $post)
                        <form action="{{ route('posts.destroy', $post) }}" method="POST" style="display:inline;">
                            @csrf @method('DELETE')
                            <button type="submit" class="btn btn-md btn-danger"
                                onclick="return confirm('Yakin ingin menghapus post ini?')">
                                Delete
                            </button>
                        </form>
                    @endcan
                </div>
            </div>
        @empty
            <p>Tidak ada post tersedia.</p>
        @endforelse
    </div>
@endsection