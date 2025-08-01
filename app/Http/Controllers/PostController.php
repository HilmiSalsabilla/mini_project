<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class PostController extends Controller
{
    public function __construct() {
        $this->middleware('auth');
    }

    public function index(Request $request) {
        // $posts = Post::where('user_id', Auth::id())->latest()->get();
        $query = Post::with('user')->latest();

        if ($request->filled('search')) {
            $search = $request->search;
            $filter = $request->filter ?? 'all';

            $query->where(function($q) use ($search, $filter) {
                if ($filter === 'title') {
                    $q->where('title', 'LIKE', "%{$search}%");
                } elseif ($filter === 'author') {
                    $q->whereHas('user', function($u) use ($search) {
                        $u->where('name', 'LIKE', "%{$search}%");
                    });
                } elseif ($filter === 'date') {
                    $q->whereDate('updated_at', $search); // format: YYYY-MM-DD
                } else {
                    // Default: cari di semua field
                    $q->where('title', 'LIKE', "%{$search}%")
                    ->orWhereHas('user', function($u) use ($search) {
                        $u->where('name', 'LIKE', "%{$search}%");
                    })
                    ->orWhereDate('updated_at', $search);
                }
            });
        }

        // $posts = Post::with('user')->latest()->paginate(5);
        $posts = $query->paginate(5);
        return view('posts.index', compact('posts'));
    }

    public function show(Post $post) {
        return view('posts.show', compact('post'));
    }

    public function create() {
        return view('posts.create');
    }

    public function store(Request $request) {
        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
        ]);

        Post::create([
            'title' => $request->title,
            'content' => $request->content,
            'user_id' => Auth::id(),
        ]);

        return redirect()->route('posts.index')->with('success', 'Post created!');
    }

    public function edit(Post $post) {
        // $this->authorize('update', $post);
        return view('posts.edit', compact('post'));
    }

    public function update(Request $request, Post $post) {
        // $this->authorize('update', $post);

        $request->validate([
            'title' => 'required|max:255',
            'content' => 'required',
        ]);

        $post->update($request->only('title', 'content'));
        return redirect()->route('posts.index')->with('success', 'Post updated!');
    }

    public function destroy(Post $post) {
        // $this->authorize('delete', $post);
        $post->delete();
        return redirect()->route('posts.index')->with('success', 'Post deleted!');
    }
}
