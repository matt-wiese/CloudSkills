param name string = 'mw20210321v1'
param location string = 'eastus'

var storageSku = 'Standard_LRS'

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-01-01' = {
  name: name
  location: location
  kind: 'Storage'
  sku: {
    name: storageSku
  }
  properties: {
    allowBlobPublicAccess: false
  }
}

output id string = storageaccount.id
