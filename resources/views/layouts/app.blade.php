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

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.bunny.net">
    <link href="https://fonts.bunny.net/css?family=figtree:400,500,600&display=swap" rel="stylesheet" />

    <!-- Tailwind -->
    @vite(['resources/css/app.css', 'resources/js/app.js'])
</head>
<body class="bg-gray-100 text-gray-800 font-sans">
    <!-- Navbar -->
    <nav class="bg-white shadow-md">
        <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div class="flex justify-between h-16">
                <!-- Brand -->
                <div class="flex items-center">
                    <a href="{{ url('/') }}" class="text-xl font-semibold text-gray-800 hover:text-red-600">
                        Laravel Mini App
                    </a>
                </div>

                <!-- Desktop Menu -->
                <div class="hidden md:flex space-x-6 items-center">
                    @auth
                        <a href="{{ route('posts.index') }}" class="text-gray-700 hover:text-red-600">Posts</a>
                        <span class="text-gray-600">Hello, <strong>{{ auth()->user()->name }}</strong></span>
                        <form action="{{ route('logout') }}" method="POST" class="inline">
                            @csrf
                            <button class="bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded text-sm">
                                Logout
                            </button>
                        </form>
                    @else
                        <a href="{{ route('login') }}" class="text-gray-700 hover:text-red-600">Login</a>
                        <a href="{{ route('register') }}" class="text-gray-700 hover:text-red-600">Register</a>
                    @endauth
                </div>

                <!-- Mobile Menu Button -->
                <div class="md:hidden flex items-center">
                    <button id="mobile-menu-button" class="focus:outline-none">
                        <svg class="w-6 h-6 text-gray-700" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" 
                                  d="M4 6h16M4 12h16M4 18h16"/>
                        </svg>
                    </button>
                </div>
            </div>
        </div>

        <!-- Mobile Menu -->
        <div id="mobile-menu" class="hidden md:hidden px-4 pb-4 space-y-2 bg-white shadow-md">
            @auth
                <a href="{{ route('posts.index') }}" class="block text-gray-700 hover:text-indigo-600">Posts</a>
                <span class="block text-gray-600">Hello, {{ auth()->user()->name }}</span>
                <form action="{{ route('logout') }}" method="POST">
                    @csrf
                    <button class="w-full bg-red-500 hover:bg-red-600 text-white px-3 py-1 rounded text-sm mt-1">
                        Logout
                    </button>
                </form>
            @else
                <a href="{{ route('login') }}" class="block text-gray-700 hover:text-indigo-600">Login</a>
                <a href="{{ route('register') }}" class="block text-gray-700 hover:text-indigo-600">Register</a>
            @endauth
        </div>
    </nav>

    <!-- Flash Message -->
    @if (session('success'))
        <div class="max-w-4xl mx-auto mt-4 px-4">
            <div class="bg-green-100 border border-green-300 text-green-700 px-4 py-2 rounded">
                {{ session('success') }}
            </div>
        </div>
    @endif

    <!-- Main Content -->
    <main class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-6">
        @yield('content')
    </main>

    <!-- Global Delete Modal -->
    <div id="deleteModal" class="fixed inset-0 bg-gray-900 bg-opacity-50 hidden opacity-0 transition-opacity duration-300 flex items-center justify-center z-50">
        <div class="bg-white rounded-xl shadow-lg p-6 max-w-sm w-full transform scale-95 transition-transform duration-300">
            <h2 class="text-xl font-semibold text-gray-800 mb-4">Konfirmasi Hapus</h2>
            <p class="text-gray-600 mb-6">Apakah kamu yakin ingin menghapus post ini? Tindakan ini tidak bisa dibatalkan.</p>
            <div class="flex justify-end space-x-3">
                <button type="button" onclick="closeDeleteModal()" 
                        class="bg-gray-300 hover:bg-gray-400 text-gray-800 px-4 py-2 rounded-lg text-sm">
                    Batal
                </button>
                <form id="deleteForm" method="POST">
                    @csrf
                    @method('DELETE')
                    <button type="submit" 
                            class="bg-red-500 hover:bg-red-600 text-white px-4 py-2 rounded-lg text-sm">
                        Hapus
                    </button>
                </form>
            </div>
        </div>
    </div>

    <script>
        const modal = document.getElementById('deleteModal');
        const modalBox = modal.querySelector('div');
        const deleteForm = document.getElementById('deleteForm');

        function openDeleteModal(actionUrl) {
            deleteForm.action = actionUrl;
            modal.classList.remove('hidden');
            setTimeout(() => {
                modal.classList.remove('opacity-0');
                modalBox.classList.remove('scale-95');
                modalBox.classList.add('scale-100');
            }, 10);
        }

        function closeDeleteModal() {
            modal.classList.add('opacity-0');
            modalBox.classList.remove('scale-100');
            modalBox.classList.add('scale-95');
            setTimeout(() => modal.classList.add('hidden'), 300);
        }

        modal.addEventListener('click', (e) => {
            if (e.target === modal) closeDeleteModal();
        });

        // Toggle mobile menu
        document.getElementById('mobile-menu-button').addEventListener('click', () => {
            document.getElementById('mobile-menu').classList.toggle('hidden');
        });

        // Auto-hide flash message
        setTimeout(() => {
            const flash = document.querySelector('.bg-green-100');
            if (flash) flash.style.display = 'none';
        }, 3000);
    </script>
</body>
</html>
