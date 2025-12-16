param virtualNetworkName string
param location string

resource virtualNetwork 'Microsoft.Network/virtualNetworks@2025-01-01' = {
  name: virtualNetworkName
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: [
        '10.200.0.0/24'
      ]
    }
    subnets: [
      {
        name: 'snet-pe'
        properties: {
          addressPrefix: '10.200.0.0/28'
        }
      }
      {
        name: 'snet-vm'
        properties: {
          addressPrefix: '10.200.0.16/28'
        }
      }
    ]
  }
}
