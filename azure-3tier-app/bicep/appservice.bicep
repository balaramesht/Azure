param location string

resource appServicePlan 'Microsoft.Web/serverfarms@2021-02-01' = {
  name: 'myAppServicePlan'
  location: location
  sku: {
    name: 'P1v2'
    tier: 'PremiumV2'
    capacity: 1
  }
  properties: {
    perSiteScaling: false
    reserved: false
  }
}

resource webApp 'Microsoft.Web/sites@2021-02-01' = {
  name: 'myWebApp'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}

resource appService 'Microsoft.Web/sites@2021-02-01' = {
  name: 'myAppService'
  location: location
  properties: {
    serverFarmId: appServicePlan.id
  }
}
