targetScope = 'subscription'

@description('Name of the resource group')
param rgName string = 'learn-arm-test-rg'

@description('Location of the resource group')
param rgLocation string = 'West Europe'

resource rg 'Microsoft.Resources/resourceGroups@2020-10-01' = {
  name: rgName
  location: rgLocation
}

module storageDeployment './azuredeploy-sub-storage.bicep' = {
  name: 'storageDeployment'
  scope: resourceGroup(rg.name)
}
