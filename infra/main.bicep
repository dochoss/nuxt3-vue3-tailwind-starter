// Deploy with command:
// az deployment group create --name <DEPLOYMENT_NAME> -g <RG_NAME> --parameters main.bicepparam

param swaName string
param location string

param repositoryBranchName string
param repositoryUrl string

module staticWebApp 'swa.bicep' = {
  name: swaName
  params: {
    repositoryBranchName: repositoryBranchName
    repositoryUrl: repositoryUrl
    swaName: swaName
    swaLocation: location
  }  
}
