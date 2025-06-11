<template>
  <div>
    <!-- About Hero -->
    <section class="bg-white py-24">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center">
          <Icon name="heroicons:information-circle" class="w-16 h-16 text-blue-600 mx-auto mb-8" />
          <h1 class="text-4xl font-bold text-gray-900 mb-6">
            About This Template
          </h1>
          <p class="text-xl text-gray-600 leading-relaxed">
            This starter template is designed to maximize productivity and maintainability 
            while providing a solid foundation for modern web applications.
          </p>
        </div>
      </div>
    </section>

    <!-- Technology Stack -->
    <section class="py-16 bg-gray-50">
      <div class="max-w-6xl mx-auto px-4 sm:px-6 lg:px-8">
        <h2 class="text-3xl font-bold text-gray-900 text-center mb-12">
          Technology Stack
        </h2>
        
        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div class="bg-white rounded-lg p-6 shadow-sm">
            <div class="flex items-center mb-4">
              <Icon name="simple-icons:nuxtdotjs" class="w-8 h-8 text-green-600 mr-3" />
              <h3 class="text-xl font-semibold text-gray-900">Nuxt 3</h3>
            </div>
            <p class="text-gray-600 mb-4">
              The intuitive Vue framework that provides:
            </p>
            <ul class="text-sm text-gray-600 space-y-1">
              <li>• Auto-imports for components and composables</li>
              <li>• File-based routing system</li>
              <li>• Server-side rendering (SSR) capabilities</li>
              <li>• Static site generation (SSG)</li>
              <li>• Built-in TypeScript support</li>
            </ul>
          </div>

          <div class="bg-white rounded-lg p-6 shadow-sm">
            <div class="flex items-center mb-4">
              <Icon name="simple-icons:tailwindcss" class="w-8 h-8 text-blue-600 mr-3" />
              <h3 class="text-xl font-semibold text-gray-900">Tailwind CSS</h3>
            </div>
            <p class="text-gray-600 mb-4">
              Utility-first CSS framework featuring:
            </p>
            <ul class="text-sm text-gray-600 space-y-1">
              <li>• Rapid prototyping capabilities</li>
              <li>• Responsive design utilities</li>
              <li>• Customizable design system</li>
              <li>• PurgeCSS for optimized builds</li>
              <li>• JIT compilation for development</li>
            </ul>
          </div>

          <div class="bg-white rounded-lg p-6 shadow-sm">
            <div class="flex items-center mb-4">
              <Icon name="heroicons:star" class="w-8 h-8 text-purple-600 mr-3" />
              <h3 class="text-xl font-semibold text-gray-900">NuxtIcon</h3>
            </div>
            <p class="text-gray-600 mb-4">
              Icon management solution providing:
            </p>
            <ul class="text-sm text-gray-600 space-y-1">
              <li>• 100,000+ icons from popular icon sets</li>
              <li>• Automatic tree-shaking</li>
              <li>• SVG optimization</li>
              <li>• Easy icon discovery</li>
              <li>• TypeScript support</li>
            </ul>
          </div>

          <div class="bg-white rounded-lg p-6 shadow-sm">
            <div class="flex items-center mb-4">
              <Icon name="heroicons:photo" class="w-8 h-8 text-orange-600 mr-3" />
              <h3 class="text-xl font-semibold text-gray-900">Nuxt Image</h3>
            </div>
            <p class="text-gray-600 mb-4">
              Image optimization module offering:
            </p>
            <ul class="text-sm text-gray-600 space-y-1">
              <li>• Automatic image optimization</li>
              <li>• Lazy loading by default</li>
              <li>• Responsive image generation</li>
              <li>• Multiple format support (WebP, AVIF)</li>
              <li>• CDN integration</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- GitHub Copilot Integration -->
    <section class="py-16 bg-white">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8">
        <div class="text-center mb-12">
          <Icon name="simple-icons:github" class="w-16 h-16 text-gray-900 mx-auto mb-6" />
          <h2 class="text-3xl font-bold text-gray-900 mb-4">
            GitHub Copilot Integration
          </h2>
          <p class="text-lg text-gray-600">
            This template is optimized for productive development with GitHub Copilot
          </p>
        </div>

        <div class="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div class="bg-gray-50 rounded-lg p-6">
            <h3 class="text-lg font-semibold text-gray-900 mb-3">
              Pre-configured Instructions
            </h3>
            <p class="text-gray-600 text-sm mb-4">
              Comprehensive Copilot instructions ensure consistent code generation following best practices.
            </p>
            <code class="text-xs bg-white px-2 py-1 rounded text-gray-700">
              .github/copilot-instructions.md
            </code>
          </div>

          <div class="bg-gray-50 rounded-lg p-6">
            <h3 class="text-lg font-semibold text-gray-900 mb-3">
              Task Management
            </h3>
            <p class="text-gray-600 text-sm mb-4">
              Built-in task tracking helps maintain context and productivity across development sessions.
            </p>
            <code class="text-xs bg-white px-2 py-1 rounded text-gray-700">
              TASKLIST.md
            </code>
          </div>
        </div>
      </div>
    </section>

    <!-- Deployment -->
    <section class="py-16 bg-blue-50">
      <div class="max-w-4xl mx-auto px-4 sm:px-6 lg:px-8 text-center">
        <Icon name="simple-icons:microsoftazure" class="w-16 h-16 text-blue-600 mx-auto mb-6" />
        <h2 class="text-3xl font-bold text-gray-900 mb-4">
          One-Command Deployment
        </h2>        <p class="text-lg text-gray-600 mb-8">
          Deploy to Azure Static Web Apps with automated PowerShell script and GitHub Actions
        </p>
        
        <div class="bg-white rounded-lg p-6 shadow-sm">
          <div class="text-left">
            <p class="text-sm text-gray-600 mb-2">Setup Azure deployment:</p>
            <code class="block bg-gray-900 text-green-400 p-4 rounded text-sm font-mono">
              .\setup-azure-swa.ps1 -AppName "my-app" -GitHubRepoUrl "https://github.com/user/repo" -CreateGitHubSecret
            </code>
          </div>
        </div>
      </div>
    </section>
  </div>
</template>

<script setup>
// Set page meta
definePageMeta({
  title: 'About - Nuxt 3 Tailwind Starter'
})

// Set head for SEO
useHead({
  title: 'About - Nuxt 3 + Tailwind CSS Starter Template',
  meta: [
    { 
      name: 'description', 
      content: 'Learn about the technology stack and features included in this Nuxt 3 + Tailwind CSS starter template.' 
    }
  ]
})
</script>
