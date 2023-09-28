param location string = resourceGroup().location

var resourceGroupName = split(resourceGroup().name, '-') //d-az1-projabc-modulexyz-rg
var environment = resourceGroupName[0]
var locationPrefix  = resourceGroupName[1]
var project   = resourceGroupName[2]
var applicationName = resourceGroupName[3]
var baseNamePrefix = '${environment}-${locationPrefix}-${project}-${applicationName}'

var functionAppName = '${baseNamePrefix}-func'
var logicAppName = '${baseNamePrefix}-http-logic'
var serviceBusName = '${baseNamePrefix}-msgbrkr-sbus'
var queueName = 'email'

// Configuration
  module Config 'modules/config.bicep'={
    name:'Fetch Configuration'
    dependsOn:[]
    params:{
      environmentIdentifier: environment
    }
  }

  var config = Config.outputs.config

// Service Bus
  module ServiceBus 'modules/service-bus.bicep'={
    name:'Deploying Service Bus'
    dependsOn:[]
    params:{
      serviceBusNamespaceName:serviceBusName 
      serviceBusQueueName: queueName
      location: location
    }
  }

