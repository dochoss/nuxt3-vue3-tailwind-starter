@minLength(3)
@maxLength(30)
param name string

param location string = resourceGroup().location

param tags object = {}

param sku object = {
  name: 'Free'
  tier: 'Free'
}

param repositoryUrl string = ''
param repositoryBranchName string = 'main'

resource swa 'Microsoft.Web/staticSites@2022-09-01' = {
  name: name
  location: location
  tags: union(tags, { 'azd-service-name': 'web' })
  sku: sku
  properties: {
    allowConfigFileUpdates: true
    branch: repositoryBranchName
    provider: repositoryUrl != '' ? 'GitHub' : 'None'
    repositoryUrl: repositoryUrl
    stagingEnvironmentPolicy: 'Enabled'
  }
}

output staticWebAppDefaultHostname string = 'https://${swa.properties.defaultHostname}'
output staticWebAppId string = swa.id
output staticWebAppName string = swa.name
