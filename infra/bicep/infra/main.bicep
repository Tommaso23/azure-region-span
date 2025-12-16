targetScope = 'resourceGroup'

//params
param location string = resourceGroup().location
param locationAlias string

//vars
var virtualNetworkName = 'vnet-netperf-client-${locationAlias}-001'
var uniqueId = uniqueString(resourceGroup().id)
var uniqueStr = take(uniqueId, 8)
var storageAccountName = 'sa${uniqueStr}'
var tableStorageName = 'latencytable'

//virtual network
module virtualNetwork 'modules/virtualnetwork.bicep' = {
  name: 'virtualNetwork'
  params: {
    virtualNetworkName: virtualNetworkName
    location: location
  }
}

//storage account
module storageAccount 'modules/storageaccount.bicep' = {
  name: 'storageAccount'
  params: {
    storageAccountName: storageAccountName
    tableStorageName: tableStorageName
    location: location
  }
}

//private endpoint for storage account

//private dns zone

//private dns zone link (storage table)

//private dns zone region
