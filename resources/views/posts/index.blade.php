@extends('layouts.app')

@section('content')
    <div class="mb-8">
        <div class="flex items-center justify-between mb-6">
            <h2 class="text-2xl font-semibold text-gray-800">Posts</h2>
            <a href="{{ route('posts.create') }}" 
               class="bg-blue-600 hover:bg-blue-700 text-white px-4 py-2 rounded-lg text-sm shadow-md transition">
                + Add Post
            </a>
        </div>

        @forelse ($posts as $post)
            <div class="bg-white rounded-xl shadow-sm hover:shadow-lg transition p-5 mb-5 border border-gray-200">
                <h3 class="text-xl font-bold text-gray-800 mb-2">{{ $post->title }}</h3>
                <hr class="border-gray-200 mb-3">
                <p class="text-gray-700 leading-relaxed mb-3">
                    {!! nl2br(e($post->content)) !!}
                </p>
                <p class="text-sm text-gray-500 mb-4">
                    By <span class="font-semibold">{{ $post->user->name ?? 'Unknown User' }}</span> • <span class="font-normal italic">{{ $post->updated_at }}</span>
                </p>

                <div class="flex space-x-3">
                    @can('update', $post)
                        <a href="{{ route('posts.edit', $post) }}" 
                           class="bg-yellow-400 hover:bg-yellow-500 text-white px-3 py-1.5 rounded-md text-sm shadow-sm">
                            Edit
                        </a>
                    @endcan

                    @can('delete', $post)
                        <form action="{{ route('posts.destroy', $post) }}" method="POST" onsubmit="return confirm('Yakin ingin menghapus post ini?')">
                            @csrf 
                            @method('DELETE')
                            <button type="submit" 
                                    class="bg-red-500 hover:bg-red-600 text-white px-3 py-1.5 rounded-md text-sm shadow-sm">
                                Delete
                            </button>
                        </form>
                    @endcan
                </div>
            </div>
        @empty
            <p class="text-gray-500">Tidak ada post tersedia.</p>
        @endforelse
    </div>
@endsection