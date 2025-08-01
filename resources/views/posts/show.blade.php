@extends('layouts.app')

@section('content')
    <div class="max-w-3xl mx-auto bg-white rounded-xl shadow-md p-8 border border-gray-200">
        <!-- Judul -->
        <h1 class="text-3xl font-bold text-gray-800 mb-3">{{ $post->title }}</h1>
        
        <!-- Info penulis -->
        <p class="text-gray-500 text-sm mb-4">
            By <span class="font-semibold">{{ $post->user->name ?? 'Unknown User' }}</span>
            • <span class="italic">{{ $post->updated_at->format('d M Y H:i') }}</span>
        </p>

        <hr class="mb-5">

        <!-- Konten -->
        <div class="prose max-w-none text-gray-700 leading-relaxed mb-6">
            {!! nl2br(e($post->content)) !!}
        </div>

        <!-- Tombol aksi -->
      <div class="flex items-center space-x-3">
            <a href="{{ route('posts.index') }}" 
               class="bg-gray-200 hover:bg-gray-300 text-gray-800 px-4 py-2 rounded-lg text-sm shadow-sm transition">
                ← Back to Posts
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
@endsection
