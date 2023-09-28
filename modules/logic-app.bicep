@description('The name of the logic app to create.')
param logicAppName string

@description('A test URI')
param testUri string = 'https://azure.status.microsoft/status/'

@description('Location for all resources.')
param location string = resourceGroup().location


param trigger object
param actions object
var workflowSchema = 'https://schema.management.azure.com/providers/Microsoft.Logic/schemas/2016-06-01/workflowdefinition.json#'

resource stg 'Microsoft.Logic/workflows@2019-05-01' = {
  name: logicAppName
  location: location
  tags: {
    displayName: logicAppName
  }
  properties: {
    definition: {
      '$schema': workflowSchema
      contentVersion: '1.0.0.0'
      parameters: {
        testUri: {
          type: 'string'
          defaultValue: testUri
        }
      }
      triggers: trigger
      actions: actions
  }
}
}
