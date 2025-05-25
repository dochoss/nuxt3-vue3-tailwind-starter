<template>
  <div class="min-h-screen bg-gray-50">
    <!-- Navigation -->
    <NavSection />    
    
    <!-- Main Content -->
    <main>
      <slot />
    </main>

    <!-- Footer -->
    <FooterSection />
  </div>
</template>

<script setup>
// Layout automatically wraps all pages
// No imports needed - Nuxt auto-imports everything
</script>
