param location string
param adminUsername string
param adminPassword string
param vnetName string
param dbSubnetName string

resource dbServer 'Microsoft.DBforMySQL/servers@2021-05-01' = {
  name: 'mySqlServer'
  location: location
  properties: {
    administratorLogin: adminUsername
    administratorLoginPassword: adminPassword
    version: '5.7'
    sslEnforcement: 'Disabled'
    storageProfile: {
      storageMB: 5120
      backupRetentionDays: 7
      geoRedundantBackup: 'Disabled'
    }
  }
  sku: {
    name: 'GP_Gen5_2'
    tier: 'GeneralPurpose'
    family: 'Gen5'
    capacity: 2
  }
}

resource db 'Microsoft.DBforMySQL/servers/databases@2021-05-01' = {
  name: 'myDatabase'
  parent: dbServer
  properties: {}
}

resource dbVnetRule 'Microsoft.DBforMySQL/servers/virtualNetworkRules@2021-05-01' = {
  name: 'dbVnetRule'
  parent: dbServer
  properties: {
    virtualNetworkSubnetId: resourceId('Microsoft.Network/virtualNetworks/subnets', vnetName, dbSubnetName)
  }
}
