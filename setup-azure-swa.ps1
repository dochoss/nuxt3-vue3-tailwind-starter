# Azure Static Web App Setup Script
# This script automates the creation of an Azure Static Web App and retrieves the deployment token

param(
    [Parameter(Mandatory=$true)]
    [string]$AppName,

    [Parameter(Mandatory=$true)]
    [string]$GitHubRepoUrl,

    [Parameter(Mandatory=$false)]
    [string]$GitHubRepoBranch = "main",
    
    [Parameter(Mandatory=$false)]
    [string]$ResourceGroup = "$AppName-rg",
    
    [Parameter(Mandatory=$false)]
    [string]$Location = "centralus",
    
    [Parameter(Mandatory=$false)]
    [string]$Sku = "Free",

    [Parameter(Mandatory=$false)]
    [switch]$CreateGitHubSecret
)

Write-Host "🚀 Setting up Azure Static Web App: $AppName" -ForegroundColor Green

# Check if Azure CLI is installed
try {
    $null = az --version 2>$null
    if ($LASTEXITCODE -ne 0) {
        throw "Azure CLI not found"
    }
    Write-Host "✅ Azure CLI found" -ForegroundColor Green
} catch {
    Write-Host "❌ Azure CLI is not installed. Please install it first:" -ForegroundColor Red
    Write-Host "   Download from: https://learn.microsoft.com/en-us/cli/azure/install-azure-cli" -ForegroundColor Yellow
    exit 1
}

# Check if GitHub CLI is installed (only if creating GitHub secret)
if ($CreateGitHubSecret) {
    try {
        $null = gh --version 2>$null
        if ($LASTEXITCODE -ne 0) {
            throw "GitHub CLI not found"
        }
        Write-Host "✅ GitHub CLI found" -ForegroundColor Green
    } catch {
        Write-Host "❌ GitHub CLI is not installed. Please install it first:" -ForegroundColor Red
        Write-Host "   Download from: https://cli.github.com/" -ForegroundColor Yellow
        Write-Host "   Or run without -CreateGitHubSecret to set up the secret manually" -ForegroundColor Yellow
        exit 1
    }

    # Check if user is logged into GitHub
    try {
        $null = gh auth status 2>$null
        if ($LASTEXITCODE -ne 0) {
            Write-Host "🔐 Please log in to GitHub..." -ForegroundColor Yellow
            gh auth login
            if ($LASTEXITCODE -ne 0) {
                Write-Host "❌ GitHub login failed" -ForegroundColor Red
                exit 1
            }
        } else {
            Write-Host "✅ Logged in to GitHub" -ForegroundColor Green
        }
    } catch {
        Write-Host "❌ Failed to check GitHub authentication" -ForegroundColor Red
        exit 1
    }
}

# Check if user is logged in
try {
    $account = az account show --query "user.name" --output tsv 2>$null
    if (!$account) {
        throw "Not logged in"
    }
    Write-Host "✅ Logged in as: $account" -ForegroundColor Green
} catch {
    Write-Host "🔐 Please log in to Azure..." -ForegroundColor Yellow
    az login
    if ($LASTEXITCODE -ne 0) {
        Write-Host "❌ Azure login failed" -ForegroundColor Red
        exit 1
    }
}

# Get subscription info
$subscription = az account show --query "name" --output tsv
Write-Host "📋 Using subscription: $subscription" -ForegroundColor Cyan

# Create resource group
Write-Host "📦 Creating resource group: $ResourceGroup" -ForegroundColor Yellow
az group create --name $ResourceGroup --location $Location --output none
if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to create resource group" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Resource group created" -ForegroundColor Green

# Create Static Web App
Write-Host "🌐 Creating Static Web App: $AppName" -ForegroundColor Yellow
az staticwebapp create `
    --name $AppName `
    --resource-group $ResourceGroup `
    --location $Location `
    --sku $Sku `
    --source "$GitHubRepoUrl" `
    --branch "$GitHubRepoBranch" `
    --output none

if ($LASTEXITCODE -ne 0) {
    Write-Host "❌ Failed to create Static Web App" -ForegroundColor Red
    exit 1
}
Write-Host "✅ Static Web App created" -ForegroundColor Green

# Get the deployment token
Write-Host "🔑 Retrieving deployment token..." -ForegroundColor Yellow
$deploymentToken = az staticwebapp secrets list --name $AppName --resource-group $ResourceGroup --query "properties.apiKey" --output tsv

if (!$deploymentToken) {
    Write-Host "❌ Failed to retrieve deployment token" -ForegroundColor Red
    exit 1
}

# Get the default hostname
$hostname = az staticwebapp show --name $AppName --resource-group $ResourceGroup --query "defaultHostname" --output tsv

# Create GitHub secret if requested
if ($CreateGitHubSecret) {
    Write-Host "🔑 Creating GitHub repository secret..." -ForegroundColor Yellow
      # Extract owner/repo from GitHubRepoUrl
    if ($GitHubRepoUrl -match "github\.com[/:](.*?)/(.*?)(?:\.git)?/?$") {
        $repoOwner = $matches[1]
        $repoName = $matches[2]
        $repoFullName = "$repoOwner/$repoName"
        
        Write-Host "   Repository: $repoFullName" -ForegroundColor Cyan
        
        try {
            # Verify repository access
            Write-Host "   Verifying repository access..." -ForegroundColor Yellow
            $null = gh repo view $repoFullName --json name 2>$null
            if ($LASTEXITCODE -ne 0) {
                throw "Cannot access repository $repoFullName. Please check permissions."
            }
            
            # Create the secret using GitHub CLI
            Write-Host "   Creating secret AZURE_STATIC_WEB_APPS_API_TOKEN..." -ForegroundColor Yellow
            Write-Output $deploymentToken | gh secret set AZURE_STATIC_WEB_APPS_API_TOKEN --repo $repoFullName
            
            if ($LASTEXITCODE -eq 0) {
                Write-Host "✅ GitHub secret created successfully" -ForegroundColor Green
                $secretCreated = $true
            } else {
                throw "GitHub CLI command failed with exit code $LASTEXITCODE"
            }
        } catch {
            Write-Host "❌ Failed to create GitHub secret: $($_.Exception.Message)" -ForegroundColor Red
            Write-Host "   You'll need to create it manually in GitHub" -ForegroundColor Yellow
            $secretCreated = $false
        }
    } else {
        Write-Host "❌ Could not parse GitHub repository URL format" -ForegroundColor Red
        Write-Host "   Expected format: https://github.com/owner/repo or git@github.com:owner/repo.git" -ForegroundColor Yellow
        $secretCreated = $false
    }
} else {
    $secretCreated = $false
}

Write-Host ""
Write-Host "🎉 Setup Complete!" -ForegroundColor Green
Write-Host "===================" -ForegroundColor Green
Write-Host "App Name: $AppName" -ForegroundColor Cyan
Write-Host "Resource Group: $ResourceGroup" -ForegroundColor Cyan
Write-Host "URL: https://$hostname" -ForegroundColor Cyan
Write-Host ""

if ($CreateGitHubSecret -and $secretCreated) {
    Write-Host "✅ GitHub secret created successfully!" -ForegroundColor Green
    Write-Host "Your GitHub Actions workflow is ready to deploy automatically on push to $GitHubRepoBranch branch." -ForegroundColor Green
    Write-Host ""
    Write-Host "🚀 To deploy now:" -ForegroundColor Magenta
    Write-Host "1. Push your code to the $GitHubRepoBranch branch" -ForegroundColor White
    Write-Host "2. GitHub Actions will automatically build and deploy" -ForegroundColor White
} else {
    Write-Host "🔐 Deployment Token:" -ForegroundColor Yellow
    Write-Host $deploymentToken -ForegroundColor White
    Write-Host ""
    if ($CreateGitHubSecret) {
        Write-Host "⚠️  GitHub secret creation failed. Please set it up manually:" -ForegroundColor Yellow
    } else {
        Write-Host "📋 Next Steps:" -ForegroundColor Magenta
    }
    Write-Host "1. Copy the deployment token above" -ForegroundColor White
    Write-Host "2. Go to your GitHub repository" -ForegroundColor White
    Write-Host "3. Settings -> Secrets and variables -> Actions" -ForegroundColor White
    Write-Host "4. New repository secret:" -ForegroundColor White
    Write-Host "   Name: AZURE_STATIC_WEB_APPS_API_TOKEN" -ForegroundColor Cyan
    Write-Host "   Value: [paste the token above]" -ForegroundColor Cyan
}

Write-Host ""
Write-Host "🚀 Or deploy manually with:" -ForegroundColor Magenta
Write-Host "npm run generate && swa deploy .output/public --deployment-token `"$deploymentToken`"" -ForegroundColor Cyan
