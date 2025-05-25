@minLength(3)
@maxLength(30)
param swaName string

param swaLocation string = resourceGroup().location

param swaTags object = {
  
}

param swaSku object = {
  name: 'Free'
  tier: 'Free'
}

param repositoryUrl string
param repositoryBranchName string

resource swa 'Microsoft.Web/staticSites@2022-09-01' = {
  name: swaName
  location: swaLocation
  tags: swaTags
  sku: swaSku
  properties: {
    allowConfigFileUpdates: true
    branch: repositoryBranchName
    provider: 'GitHub'
    repositoryUrl: repositoryUrl
    stagingEnvironmentPolicy: 'Enabled'
  }
}
