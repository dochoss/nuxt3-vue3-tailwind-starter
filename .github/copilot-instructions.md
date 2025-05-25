# GitHub Copilot Instructions

This project is a template for Nuxt 3 projects using Tailwind CSS, Nuxt Tailwind module, NuxtIcon, and Nuxt Image. To ensure Copilot suggestions are consistent, modern, and leverage our stack, follow these guidelines:

---

## General Guidelines

- **Always use Nuxt 3 conventions**: Prefer Nuxt’s auto-imports, composables, and directory structure. See [Nuxt Auto Imports](https://nuxt.com/docs/guide/concepts/auto-imports).
- **Use Tailwind CSS for styling**: Do not use plain CSS or SCSS unless absolutely necessary. Reference [Tailwind CSS docs](https://tailwindcss.com/).
- **Configure Tailwind via Nuxt module**: Use the [Nuxt Tailwind module](https://nuxt.com/modules/tailwindcss) for all Tailwind configuration and integration.
- **Use NuxtIcon for icons**: Do not use HeroIcons directly. Always use the [NuxtIcon module](https://nuxt.com/modules/icon) for icon components.
- **Use Nuxt Image for images**: Prefer the [Nuxt Image module](https://nuxt.com/modules/image) for optimized images and responsive loading.

---

## Copilot-Specific Instructions

### Nuxt 3

- Use `<script setup>` syntax for all Vue components.
- Order components with `<template>`, `<script setup>`, and `<style>` blocks in that order.
- Use `NuxtLink` for internal navigation and `<a>` for external links.
- Use Nuxt’s auto-imported composables (e.g., `useRoute`, `useFetch`) instead of manual imports.
- Place pages in the `/pages` directory and components in `/components`.
- Use the `definePageMeta` and `defineNuxtComponent` helpers where appropriate.

### Tailwind CSS

- Use Tailwind utility classes for all styling.
- Do not suggest inline styles or CSS modules.
- Use the `@apply` directive in Tailwind for reusable class groups in component `<style>` blocks if needed.

### Nuxt Tailwind Module

- All Tailwind configuration should be in `tailwind.config.js` or via the Nuxt module options in `nuxt.config.ts`.
- Use module features like JIT mode and custom theme extensions as needed.

### NuxtIcon

- Use the `<Icon name="..." />` component for all icons.
- Do not use `<svg>` or external icon libraries directly.
- Reference the [NuxtIcon documentation](https://nuxt.com/modules/icon) for available icons and usage.

### Nuxt Image

- Use the `<NuxtImg>` component for all images.
- Prefer dynamic image sources and responsive attributes.
- Reference the [Nuxt Image documentation](https://nuxt.com/modules/image) for usage patterns.

---

## Example Usage

```vue
<template>
  <div class="p-8 bg-white rounded-lg shadow">
    <Icon name="heroicons-outline:home" class="w-6 h-6 text-blue-500" />
    <h1 class="text-2xl font-bold">Welcome</h1>
    <NuxtImg src="/images/example.jpg" width="400" height="300" class="rounded" />
  </div>
</template>

<script setup>
// No need to import Nuxt composables or components manually
</script>
```

---

## Task Management

- **Always reference TASKLIST.md**: Before starting work, check the task list for context and priorities.
- **Update task status**: Mark tasks as completed and add new tasks as they arise.
- **Document work performed**: Update the task list with a brief description of work completed.

## Additional Notes

- Always check the latest documentation for each module.
- Prefer composability and reusability in all code suggestions.
- Avoid suggesting deprecated APIs or patterns.

---

**References:**
- [Nuxt 3 Docs](https://nuxt.com/docs/guide/concepts/auto-imports)
- [Tailwind CSS Docs](https://tailwindcss.com/)
- [Nuxt Tailwind Module](https://nuxt.com/modules/tailwindcss)
- [NuxtIcon Module](https://nuxt.com/modules/icon)
- [Nuxt Image Module](https://nuxt.com/modules/image)