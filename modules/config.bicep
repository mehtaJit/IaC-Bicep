param environmentIdentifier string

var environmentConfig = {
  d: {
    isProductionLike: false
    serviceBus: {
      sku: {
        name: 'Standard'
        tier: 'Standard'
      }
      properties: {
        enableExpress: false
        enablePartitioning: false
        status: 'Active'
        maxMessageSizeInKilobytes: 256
      }
    }
    keyVault: {
      sku: {
        family: 'A'
        name: 'Standard'
      }
    }
  }
  i: {
    isProductionLike: true
    serviceBus: {
      sku: {
        name: 'Standard'
        tier: 'Standard'
      }
      properties: {
        enableExpress: false
        enablePartitioning: false
        status: 'Active'
        maxMessageSizeInKilobytes: 256
      }
    }
    keyVault: {
      sku: {
        family: 'A'
        name: 'Standard'
      }
    }

  }
  t: {
    isProductionLike: false
    serviceBus: {
      sku: {
        name: 'Standard'
        tier: 'Standard'
      }
      properties: {
        enableExpress: false
        enablePartitioning: false
        status: 'Active'
        maxMessageSizeInKilobytes: 256
      }
    }
    keyVault: {
      sku: {
        family: 'A'
        name: 'Standard'
      }
    }

  }
  p: {
    isProductionLike: false
    serviceBus: {
      sku: {
        name: 'Standard'
        tier: 'Standard'
      }
      properties: {
        enableExpress: false
        enablePartitioning: false
        status: 'Active'
        maxMessageSizeInKilobytes: 256
      }
    }
    keyVault: {
      sku: {
        family: 'A'
        name: 'Standard'
      }
    }

  }
}

output config object = environmentConfig[environmentIdentifier]
