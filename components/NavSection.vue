<template>
  <nav class="bg-white shadow-sm border-b">
    <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
      <div class="flex justify-between h-16">
        <div class="flex items-center">
          <NuxtLink to="/" class="flex items-center space-x-2">
            <Icon name="heroicons:cube" class="w-8 h-8 text-blue-600" />
            <span class="text-xl font-bold text-gray-900">Nuxt Starter</span>
          </NuxtLink>
        </div>
        
        <div class="flex items-center space-x-4">
          <NuxtLink 
            to="/" 
            class="text-gray-600 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium transition-colors"
          >
            Home
          </NuxtLink>
          <NuxtLink 
            to="/about" 
            class="text-gray-600 hover:text-gray-900 px-3 py-2 rounded-md text-sm font-medium transition-colors"
          >
            About
          </NuxtLink>
        </div>
      </div>
    </div>
  </nav>
</template>

<script setup>
// Navigation component for the main site header
// Auto-imported by Nuxt - no need for manual registration
</script>
