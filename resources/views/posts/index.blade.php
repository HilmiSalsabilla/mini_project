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
                <h3 class="text-xl font-bold text-gray-800 mb-2">
                    <a href="{{ route('posts.show', $post) }}" class="hover:text-blue-600 transition">
                        {{ $post->title }}
                    </a>
                </h3>
                <p class="text-sm text-gray-500 mb-3">
                    By <span class="font-semibold">{{ $post->user->name ?? 'Unknown User' }}</span>
                    • <span class="font-normal italic">{{ $post->updated_at->format('d M Y H:i') }}</span>
                </p>
                <p class="text-gray-700 leading-relaxed mb-4">
                    {!! nl2br(e(\Illuminate\Support\Str::words($post->content, 100, '...'))) !!}
                </p>

                <div class="flex space-x-3">
                    <a href="{{ route('posts.show', $post) }}" class="bg-gray-200 hover:bg-gray-400 text-gray-700 px-4 py-2 rounded-lg text-sm shadow-sm transition">
                        Read More
                    </a>
                    @can('update', $post)
                        <a href="{{ route('posts.edit', $post) }}" 
                           class="bg-yellow-400 hover:bg-yellow-500 text-gray-700 px-4 py-2 rounded-lg text-sm shadow-sm transition">
                            ✏ Edit
                        </a>
                    @endcan

                    @can('delete', $post)
                        <button type="button"
                                onclick="openDeleteModal('{{ route('posts.destroy', $post) }}')" 
                                class="bg-red-500 hover:bg-red-600 text-gray-700 px-4 py-2 rounded-lg text-sm shadow-sm transition">
                            🗑 Delete
                        </button>
                    @endcan
                </div>
            </div>
        @empty
            <p class="text-gray-500">Tidak ada post tersedia.</p>
        @endforelse

         <!-- Pagination -->
        <div class="mt-6">
            {{ $posts->links() }}
        </div>
    </div>
@endsection