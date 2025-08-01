@props([
    'type' => 'success', // success, error, warning, info
    'message' => null,
])

@php
    $styles = [
        'success' => ['bg' => 'bg-green-50', 'border' => 'border-green-300', 'text' => 'text-green-800', 'icon' => 'text-green-600', 'svg' => 'M9 12l2 2l4-4m6 2a9 9 0 11-18 0a9 9 0 0118 0z'],
        'error'   => ['bg' => 'bg-red-50', 'border' => 'border-red-300', 'text' => 'text-red-800', 'icon' => 'text-red-600', 'svg' => 'M6 18L18 6M6 6l12 12'],
        'warning' => ['bg' => 'bg-yellow-50', 'border' => 'border-yellow-300', 'text' => 'text-yellow-800', 'icon' => 'text-yellow-600', 'svg' => 'M12 9v2m0 4h.01M21 12a9 9 0 11-18 0a9 9 0 0118 0z'],
        'info'    => ['bg' => 'bg-blue-50', 'border' => 'border-blue-300', 'text' => 'text-blue-800', 'icon' => 'text-blue-600', 'svg' => 'M13 16h-1v-4h-1m1-4h.01M12 4a8 8 0 100 16a8 8 0 000-16z'],
    ];
    $s = $styles[$type];
@endphp

<div id="alert-{{ $type }}" class="max-w-7xl mx-auto mt-4 px-4 transition transform duration-300">
    <div class="flex items-center justify-between {{ $s['bg'] }} {{ $s['border'] }} {{ $s['text'] }} px-6 py-4 rounded-lg shadow-sm border">
        <div class="flex items-center space-x-3">
            <!-- Icon -->
            <svg class="w-6 h-6 {{ $s['icon'] }}" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="{{ $s['svg'] }}" />
            </svg>
            <span class="text-base font-medium">{{ $message }}</span>
        </div>
        <!-- Close button -->
        <button onclick="document.getElementById('alert-{{ $type }}').remove()" 
                class="{{ $s['icon'] }} hover:opacity-75 focus:outline-none text-lg">
                ✕
        </button>
    </div>
</div>

<script>
    // Auto-hide setelah 5 detik
    setTimeout(() => {
        const alertBox = document.getElementById('alert-{{ $type }}');
        if (alertBox) {
            alertBox.classList.add('opacity-0', 'translate-y-[-10px]');
            setTimeout(() => alertBox.remove(), 300);
        }
    }, 5000);
</script>
