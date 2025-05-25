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

This template is configured for easy deployment to Azure using the Azure Developer CLI (azd).

### Prerequisites

1. Install [Azure Developer CLI (azd)](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/install-azd)
2. Install [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
3. Have an Azure subscription

### Deploy with Azure Developer CLI

```bash
# Initialize and deploy (first time)
azd up

# Or step by step:
azd auth login              # Authenticate with Azure
azd init                   # Initialize the project (if not already done)
azd provision              # Create Azure resources
azd deploy                 # Deploy the application

# For subsequent deployments (code changes only)
azd deploy

# To tear down all resources
azd down
```

The deployment will create:
- Azure Static Web App for hosting your Nuxt application
- Resource Group to contain all resources
- Automatic CI/CD integration with your repository (if connected)

### Manual Deployment (Alternative)

If you prefer manual deployment with Azure CLI:
```bash
az deployment sub create --location eastus2 --template-file infra/main.bicep --parameters environmentName=<ENV_NAME> location=<LOCATION>
```

Check out the [Azure deployment documentation](https://nuxt.com/docs/getting-started/deployment) for more information.
