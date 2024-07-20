targetScope = 'resourceGroup'

param location string = resourceGroup().location
param adminUsername string = 'azureuser'
param adminPassword string

module network 'network.bicep' = {
  name: 'network'
  params: {
    location: location
  }
}

module storage 'storage.bicep' = {
  name: 'storage'
  params: {
    location: location
  }
}

module appservice 'appservice.bicep' = {
  name: 'appservice'
  params: {
    location: location
  }
}

module database 'database.bicep' = {
  name: 'database'
  params: {
    location: location
    adminUsername: adminUsername
    adminPassword: adminPassword
    vnetName: network.outputs.vnetName
    dbSubnetName: network.outputs.dbSubnetName
  }
}
