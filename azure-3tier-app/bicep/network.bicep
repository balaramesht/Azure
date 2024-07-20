param location string

resource vnet 'Microsoft.Network/virtualNetworks@2021-05-01' = {
  name: 'myVnet'
  location: location
  properties: {
    addressSpace: {
      addressPrefixes: ['10.0.0.0/16']
    }
    subnets: [
      {
        name: 'dbSubnet'
        properties: {
          addressPrefix: '10.0.1.0/24'
        }
      }
    ]
  }
}

output vnetName string = vnet.name
output dbSubnetName string = vnet.properties.subnets[0].name
