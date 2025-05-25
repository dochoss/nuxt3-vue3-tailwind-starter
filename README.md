# Nuxt 3 + Tailwind CSS Starter Template

A modern, opinionated starter template for Nuxt 3 projects with Tailwind CSS, optimized for productive development with GitHub Copilot.

## 🚀 The Vibe

This template is designed for **flow state coding** - where you and GitHub Copilot work together seamlessly. We've pre-configured everything to help you focus on building, not configuring.

### 🤖 GitHub Copilot Integration

- **📋 Check [`TASKLIST.md`](./TASKLIST.md)** before starting work - it tracks priorities and context
- **📖 Read [`.github/copilot-instructions.md`](./.github/copilot-instructions.md)** for tech stack guidance
- **✅ Update tasks** as you work - keep the flow going for future sessions

### 🛠 Tech Stack

- **[Nuxt 3](https://nuxt.com/docs/getting-started/introduction)** - The intuitive Vue framework
- **[Tailwind CSS](https://tailwindcss.com/)** - Utility-first CSS framework  
- **[NuxtIcon](https://nuxt.com/modules/icon)** - Thousands of ready-to-use icons (including HeroIcons!)
- **[Nuxt Image](https://nuxt.com/modules/image)** - Optimized image handling
- **[Nuxt Tailwind](https://nuxt.com/modules/tailwindcss)** - Seamless Tailwind integration

## Setup

Make sure to install the dependencies:

```bash
# yarn
yarn install

# npm
npm install

# pnpm
pnpm install --shamefully-hoist
```

## Development Server

Start the development server on http://localhost:3000

```
npm run dev
```

### Local Development with SWA CLI

For testing Azure Static Web Apps features locally (like routing, authentication, etc.):

```bash
# Initialize SWA configuration (one-time setup)
swa init

# Specify the following:
# √ Are these settings correct? ... no
# √ What's your app location? ... .
# √ What's your build output location? ... .output/public
# √ What's your API location? (optional) ... <leave empty>
# √ What's your data API location? (optional) ... <leave empty>
# √ What command do you use to build your app? (optional) ... npm run generate
# √ What command do you use to build your API? (optional) ... <leave empty>
# √ What command do you use to run your app for development? (optional) ... npm run dev
# √ What's your app development server URL (optional) ... http://localhost:3000
# √ What's your API development server URL (optional) ... <leave empty>

# Build the static site
npm run generate

# Start local SWA emulator
swa start
```

This will:
- Create a `swa-cli.config.json` file with your local configuration
- Start the SWA emulator on http://localhost:4280
- Proxy your Nuxt dev server for hot reloading

> **Note**: The SWA CLI emulator lets you test static web app features like custom routing rules, authentication, and API functions locally before deploying.

## Production

Build the application for production:

```
npm run build
```

Locally preview production build:

```
npm run preview
```

Build for static site deployment (through storage or Azure Static Web Apps):
```
npm run generate
```

## 🚀 Deployment to Azure

This template is configured for easy deployment to Azure Static Web Apps using the SWA CLI.

### Prerequisites

1. Install [SWA CLI](https://azure.github.io/static-web-apps-cli/docs/use/install)
2. Have an Azure subscription
3. Create an Azure Static Web App resource in the Azure portal

### Deploy with SWA CLI

```bash
# Build your application first
npm run generate

# Deploy to Azure Static Web App (with deployment token)
swa deploy .output/public --deployment-token <your-deployment-token>

# Or create a local swa-cli.config.json for easier repeated deployments
swa deploy
```

Create a `swa-cli.config.json` file for easier deployments:
```json
{
  "$schema": "https://azure.github.io/static-web-apps-cli/schema/swa-cli.config.schema.json",
  "configurations": {
    "app": {
      "appLocation": ".output/public",
      "deploymentToken": "your-deployment-token-here"
    }
  }
}
```

> **Tip**: Get your deployment token from the Azure portal under your Static Web App > Manage deployment token

Check out the [Azure deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.

## 🔄 CI/CD with GitHub Actions

This template includes a GitHub Actions workflow for automated deployment to Azure Static Web Apps.

### Azure Static Web Apps Deployment (`.github/workflows/azure-swa-deploy.yml`)

**Automated deployment** with GitHub integration and PR previews.

**Setup:**
1. Create an Azure Static Web App in the Azure portal
2. Get the deployment token from the Static Web App settings
3. Add the token as a repository secret named `AZURE_STATIC_WEB_APPS_API_TOKEN`

**Features:**
- Automatic deployment on pushes to `main`
- PR preview deployments  
- Optimized for Nuxt 3 static generation
- Uses `npm run generate` to build the application

### 🚀 Quick Start

1. Create an Azure Static Web App in the Azure portal
2. Add your deployment token as a repository secret
3. Push to `main` branch - automatic deployment starts!

The workflow is pre-configured to work with this Nuxt 3 template. ✨
