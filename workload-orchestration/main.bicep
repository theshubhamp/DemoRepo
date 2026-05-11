var location = 'eastus'

var schemaName = 'ContosoApp'
resource Schema 'Microsoft.Edge/schemas@2026-03-01' = {
  name: '${schemaName}Schema'
  location: location
  properties: {}

  resource v1_0_0 'versions@2026-03-01' = {
    name: '1.0.0' 
    properties: {
      value: '''
        rules:
            configs:
              Name:
                required: true
                type: string
        '''
    }
  }
}
