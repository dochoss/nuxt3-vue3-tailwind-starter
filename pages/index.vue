<template>
  <div>
    <!-- Hero Section -->
    <section class="bg-gradient-to-r from-blue-600 to-indigo-700">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-24">
        <div class="text-center">
          <Icon name="heroicons:rocket-launch" class="w-20 h-20 text-white mx-auto mb-8" />
          <h1 class="text-4xl sm:text-5xl md:text-6xl font-bold text-white mb-6">
            Nuxt 3 + Tailwind
            <span class="block text-blue-200">Starter Template</span>
          </h1>
          <p class="text-xl text-blue-100 mb-8 max-w-3xl mx-auto">
            A modern, opinionated starter template optimized for productive development with GitHub Copilot. 
            Pre-configured with Nuxt 3, Tailwind CSS, NuxtIcon, and Nuxt Image.
          </p>
          <div class="flex flex-col sm:flex-row gap-4 justify-center">
            <NuxtLink 
              to="/about"
              class="inline-flex items-center px-6 py-3 border border-transparent text-base font-medium rounded-md text-blue-600 bg-white hover:bg-gray-50 transition-colors"
            >
              <Icon name="heroicons:information-circle" class="w-5 h-5 mr-2" />
              Learn More
            </NuxtLink>
            <a 
              href="https://github.com/dochoss/nuxt3-vue3-tailwind-starter"
              target="_blank"
              rel="noopener noreferrer"
              class="inline-flex items-center px-6 py-3 border border-white text-base font-medium rounded-md text-white hover:bg-white hover:bg-opacity-10 transition-colors"
            >
              <Icon name="simple-icons:github" class="w-5 h-5 mr-2" />
              View on GitHub
            </a>
          </div>
        </div>
      </div>
    </section>

    <!-- Features Section -->
    <section class="py-24 bg-white">
      <div class="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-16">
          <h2 class="text-3xl font-bold text-gray-900 mb-4">
            Everything You Need to Start Building
          </h2>
          <p class="text-lg text-gray-600 max-w-2xl mx-auto">
            Pre-configured with the best tools and practices for modern web development
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8">
          <!-- Nuxt 3 -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-green-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="simple-icons:nuxtdotjs" class="w-6 h-6 text-green-600" />
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-2">Nuxt 3</h3>
            <p class="text-gray-600">
              The intuitive Vue framework with auto-imports, file-based routing, and excellent developer experience.
            </p>
          </div>

          <!-- Tailwind CSS -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="simple-icons:tailwindcss" class="w-6 h-6 text-blue-600" />
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-2">Tailwind CSS</h3>
            <p class="text-gray-600">
              Utility-first CSS framework for rapid UI development with responsive design built-in.
            </p>
          </div>

          <!-- NuxtIcon -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-purple-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="heroicons:star" class="w-6 h-6 text-purple-600" />
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-2">NuxtIcon</h3>
            <p class="text-gray-600">
              Thousands of ready-to-use icons from popular icon sets, optimized for performance.
            </p>
          </div>

          <!-- Nuxt Image -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-orange-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="heroicons:photo" class="w-6 h-6 text-orange-600" />
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-2">Nuxt Image</h3>
            <p class="text-gray-600">
              Optimized image component with lazy loading, responsive sizing, and format optimization.
            </p>
          </div>

          <!-- GitHub Copilot -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-gray-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="simple-icons:github" class="w-6 h-6 text-gray-600" />
            </div>
            <h3 class="text-xl font-semibold text-gray-900 mb-2">Copilot Ready</h3>
            <p class="text-gray-600">
              Pre-configured instructions and task management for optimal GitHub Copilot integration.
            </p>
          </div>

          <!-- Azure Deploy -->
          <div class="bg-gray-50 rounded-lg p-6 hover:shadow-lg transition-shadow">
            <div class="w-12 h-12 bg-blue-100 rounded-lg flex items-center justify-center mb-4">
              <Icon name="simple-icons:microsoftazure" class="w-6 h-6 text-blue-600" />
            </div>            <h3 class="text-xl font-semibold text-gray-900 mb-2">Azure Ready</h3>
            <p class="text-gray-600">
              Automated deployment to Azure Static Web Apps with PowerShell script and GitHub Actions integration.
            </p>
          </div>
        </div>
      </div>
    </section>

    <!-- Quick Start Section -->
    <section class="py-24 bg-gray-50">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <h2 class="text-3xl font-bold text-gray-900 mb-4">
            Quick Start
          </h2>
          <p class="text-lg text-gray-600">
            Get up and running in minutes
          </p>
        </div>

        <div class="bg-white rounded-lg shadow-lg p-8">
          <div class="grid grid-cols-1 md:grid-cols-3 gap-8">
            <div class="text-center">
              <div class="w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto mb-4 text-sm font-bold">
                1
              </div>
              <h3 class="font-semibold text-gray-900 mb-2">Install Dependencies</h3>
              <code class="text-sm bg-gray-100 px-3 py-1 rounded text-gray-800">npm install</code>
            </div>
            
            <div class="text-center">
              <div class="w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto mb-4 text-sm font-bold">
                2
              </div>
              <h3 class="font-semibold text-gray-900 mb-2">Start Development</h3>
              <code class="text-sm bg-gray-100 px-3 py-1 rounded text-gray-800">npm run dev</code>
            </div>
            
            <div class="text-center">
              <div class="w-8 h-8 bg-blue-600 text-white rounded-full flex items-center justify-center mx-auto mb-4 text-sm font-bold">
                3
              </div>              <h3 class="font-semibold text-gray-900 mb-2">Deploy to Azure</h3>
              <code class="text-sm bg-gray-100 px-3 py-1 rounded text-gray-800">.\setup-azure-swa.ps1</code>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
// Set page meta for SEO
definePageMeta({
  title: 'Home - Nuxt 3 Tailwind Starter',
  description: 'A modern, opinionated starter template for Nuxt 3 projects with Tailwind CSS, optimized for GitHub Copilot.'
})

// Set head for SEO
useHead({
  title: 'Nuxt 3 + Tailwind CSS Starter Template',
  meta: [
    { 
      name: 'description', 
      content: 'A modern, opinionated starter template for Nuxt 3 projects with Tailwind CSS, optimized for productive development with GitHub Copilot.' 
    }
  ]
})
</script>
