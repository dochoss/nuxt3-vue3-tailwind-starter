# Azure Static Web Apps Deployment Examples

This document provides practical examples for deploying this Nuxt 3 starter template to Azure Static Web Apps.

## Quick Start Examples

### 1. Fully Automated Setup (Recommended)

```powershell
# Clone this repository (if you haven't already)
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name

# Run automated setup with GitHub secret creation
.\setup-azure-swa.ps1 `
    -AppName "my-nuxt-app" `
    -GitHubRepoUrl "https://github.com/your-username/your-repo-name" `
    -CreateGitHubSecret

# That's it! Push to main branch to trigger deployment
git add .
git commit -m "Initial commit"
git push origin main
```

### 2. Semi-Automated Setup

```powershell
# Create Azure resources only (manual secret setup)
.\setup-azure-swa.ps1 `
    -AppName "my-nuxt-app" `
    -GitHubRepoUrl "https://github.com/your-username/your-repo-name"

# Follow the displayed instructions to add the secret to GitHub
# Then push to trigger deployment
```

### 3. Manual Deployment with SWA CLI

```bash
# Install dependencies and build
npm install
npm run generate

# Deploy directly using SWA CLI (useful for testing)
swa deploy .output/public --deployment-token "your-deployment-token-here"
```

## Real-World Scenarios

### Personal Project
```powershell
.\setup-azure-swa.ps1 `
    -AppName "johndoe-portfolio" `
    -GitHubRepoUrl "https://github.com/johndoe/portfolio" `
    -CreateGitHubSecret
```

### Team Project with Custom Settings
```powershell
.\setup-azure-swa.ps1 `
    -AppName "company-website" `
    -GitHubRepoUrl "https://github.com/company/website" `
    -GitHubRepoBranch "production" `
    -ResourceGroup "company-web-rg" `
    -Location "eastus2" `
    -CreateGitHubSecret
```

### Multiple Environments
```powershell
# Development environment
.\setup-azure-swa.ps1 `
    -AppName "myapp-dev" `
    -GitHubRepoUrl "https://github.com/user/myapp" `
    -GitHubRepoBranch "develop" `
    -ResourceGroup "myapp-dev-rg" `
    -CreateGitHubSecret

# Production environment
.\setup-azure-swa.ps1 `
    -AppName "myapp-prod" `
    -GitHubRepoUrl "https://github.com/user/myapp" `
    -GitHubRepoBranch "main" `
    -ResourceGroup "myapp-prod-rg" `
    -CreateGitHubSecret
```

## Troubleshooting Common Issues

### Issue: Script can't find Azure CLI
**Solution:**
```powershell
# Install Azure CLI
winget install Microsoft.AzureCLI
# Or download from: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli
```

### Issue: GitHub CLI not found
**Solution:**
```powershell
# Install GitHub CLI
winget install GitHub.cli
# Or download from: https://cli.github.com/
```

### Issue: Not logged in to Azure
**Solution:**
```powershell
az login
```

### Issue: Not logged in to GitHub
**Solution:**
```powershell
gh auth login
```

### Issue: Repository access denied
**Solution:**
- Ensure you have admin access to the GitHub repository
- Verify the repository URL is correct
- Check if the repository is private and you have appropriate permissions

## Local Development with SWA CLI

For testing Azure Static Web Apps features locally:

```bash
# Install SWA CLI globally
npm install -g @azure/static-web-apps-cli

# Initialize SWA configuration
swa init

# Start local development
swa start http://localhost:3000 --run "npm run dev"
```

## CI/CD Pipeline Customization

The included GitHub Actions workflow (`.github/workflows/azure-swa-deploy.yml`) can be customized:

```yaml
# Example: Add environment variables
env:
  NODE_VERSION: '18'
  NUXT_PUBLIC_API_BASE: 'https://api.example.com'

# Example: Add additional build steps
- name: Run tests
  run: npm test

- name: Run linting
  run: npm run lint
```

---

*Need help? Check the main [README.md](./README.md) or create an issue in the repository.*
