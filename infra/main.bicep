// Deploy with azd:
// azd up

targetScope = 'subscription'

@minLength(1)
@maxLength(64)
@description('Name of the environment that can be used as part of naming resource convention')
param environmentName string

@minLength(1)
@description('Primary location for all resources')
param location string

@description('Repository URL for the static web app')
param repositoryUrl string = ''

@description('Repository branch name')
param repositoryBranchName string = 'main'

// Generate a unique suffix for resource names
var resourceToken = toLower(uniqueString(subscription().id, environmentName, location))
var tags = { 'azd-env-name': environmentName }

// Create resource group
resource rg 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rg-${environmentName}'
  location: location
  tags: tags
}

module staticWebApp 'swa.bicep' = {
  name: 'swa'
  scope: rg
  params: {
    name: 'swa-${environmentName}-${resourceToken}'
    location: location
    repositoryUrl: repositoryUrl
    repositoryBranchName: repositoryBranchName
    tags: tags
  }
}

output AZURE_LOCATION string = location
output AZURE_TENANT_ID string = tenant().tenantId
output REACT_APP_WEB_BASE_URL string = staticWebApp.outputs.staticWebAppDefaultHostname
