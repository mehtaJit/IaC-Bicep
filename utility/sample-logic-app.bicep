param frequency string
param interval string
param type string

var actionType = 'http'
var method = 'GET'


@description('A test URI')
param testUri string = 'https://azure.status.microsoft/status/'

output trigger object={
  
  recurrence: {
    type: type
    recurrence: {
      frequency: frequency
      interval: interval
    }
  }
}

output actions object={
  actionType: {
    type: actionType
    inputs: {
      method: method
      uri: testUri
    }
  }
}
