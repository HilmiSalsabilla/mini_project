@php
    use Illuminate\Support\Facades\Auth;
@endphp

<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="csrf-token" content="{{ csrf_token() }}">

        <title>{{ config('app.name', 'Mini Laravel App') }}</title>

        <!-- Bootstrap 5 via CDN -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

        <!-- Scripts -->
        @vite(['resources/css/app.css', 'resources/js/app.js'])
    </head>
    <body>
        {{-- <div class="text-center text-white bg-secondary py-1">Layout Loaded ✅</div> --}}
        <nav class="navbar navbar-expand-lg navbar-light bg-light mb-4">
            <div class="container">
                <a href="{{ url('/') }}" class="navbar-brand text-2xl font-semibold">Laravel Mini App</a>
                <div class="collapse navbar-collapse" id="navbarNav">
                    <ul class="navbar-nav ms-auto">
                        @auth
                            <li class="nav-item">
                                <a href="{{ route('posts.index') }}" class="nav-link">Posts</a>
                            </li>
                            <li class="nav-item">
                                <span class="nav-link">Hello, {{ auth()->user()->name }} </span>
                            </li>
                            <li class="nav-item">
                                <form action="{{ route('logout') }}" method="post" class="d-inline">
                                    @csrf
                                    <button class="btn btn-sm btn-outline-light">Logout</button>
                                </form>
                            </li>
                        @else
                            <li class="nav-item">
                                <a href="{{ route('login') }}" class="nav-link">Login</a>
                            </li>
                            <li class="nav-item">
                                <a href="{{ route('register') }}" class="nav-link">Register</a>
                            </li>
                        @endauth
                    </ul>
                </div>
            </div>
        </nav>
        <main>
            @if (session('success'))
                <div class="container">
                    <div class="alert alert-success">
                        {{ session('success') }}
                    </div>
                </div>
            @endif
            @yield('content')
        </main>
        
        <!-- Bootstrap JS via CDN -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
