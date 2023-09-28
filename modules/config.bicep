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
        lockDuration: 'PT5M'
        maxSizeInMegabytes: 1024
        requiresDuplicateDetection: false
        requiresSession: false
        defaultMessageTimeToLive: 'P10675199DT2H48M5.4775807S'
        deadLetteringOnMessageExpiration: false
        duplicateDetectionHistoryTimeWindow: 'PT10M'
        maxDeliveryCount: 10
        autoDeleteOnIdle: 'P10675199DT2H48M5.4775807S'
        enablePartitioning: false
        enableExpress: false
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
        lockDuration: 'PT5M'
        maxSizeInMegabytes: 1024
        requiresDuplicateDetection: false
        requiresSession: false
        defaultMessageTimeToLive: 'P10675199DT2H48M5.4775807S'
        deadLetteringOnMessageExpiration: false
        duplicateDetectionHistoryTimeWindow: 'PT10M'
        maxDeliveryCount: 10
        autoDeleteOnIdle: 'P10675199DT2H48M5.4775807S'
        enablePartitioning: false
        enableExpress: false
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
        lockDuration: 'PT5M'
        maxSizeInMegabytes: 1024
        requiresDuplicateDetection: false
        requiresSession: false
        defaultMessageTimeToLive: 'P10675199DT2H48M5.4775807S'
        deadLetteringOnMessageExpiration: false
        duplicateDetectionHistoryTimeWindow: 'PT10M'
        maxDeliveryCount: 10
        autoDeleteOnIdle: 'P10675199DT2H48M5.4775807S'
        enablePartitioning: false
        enableExpress: false
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
        lockDuration: 'PT5M'
        maxSizeInMegabytes: 1024
        requiresDuplicateDetection: false
        requiresSession: false
        defaultMessageTimeToLive: 'P10675199DT2H48M5.4775807S'
        deadLetteringOnMessageExpiration: false
        duplicateDetectionHistoryTimeWindow: 'PT10M'
        maxDeliveryCount: 10
        autoDeleteOnIdle: 'P10675199DT2H48M5.4775807S'
        enablePartitioning: false
        enableExpress: false
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
