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

        <!-- Tombol kembali -->
        <div>
            <a href="{{ route('posts.index') }}" 
               class="inline-block bg-gray-200 hover:bg-gray-400 text-black px-3 py-1.5 rounded-md text-sm shadow-sm transition">
                ← Back to Posts
            </a>
        </div>
    </div>
@endsection
