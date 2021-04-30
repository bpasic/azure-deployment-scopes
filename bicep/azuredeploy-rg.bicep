@description('Name of the storage account')
param storageAccountName string = 'bpsa1337b'

resource storageAccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: storageAccountName
  location: resourceGroup().location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
    tier: 'Standard'
  }
  tags:{
    displayName: storageAccountName
  }
}
