param storageAccountName string
param tableStorageName string
param location string

resource storageAccount 'Microsoft.Storage/storageAccounts@2025-06-01' = {
  name: storageAccountName
  location: location
  kind: 'StorageV2'
  sku: {
    name: 'Standard_LRS'
  }
}

resource table 'Microsoft.Storage/storageAccounts/tableServices/tables@2025-06-01' = {
  name: '${storageAccount.name}/default/${tableStorageName}'
}
