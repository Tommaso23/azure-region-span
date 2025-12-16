targetScope = 'subscription'

param location string
param rgName string


resource resourceGroup 'Microsoft.Resources/resourceGroups@2025-04-01' = {
  name: rgName
  location: location
}
