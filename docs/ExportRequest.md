# Freeclimb::ExportRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **resource_type** | [**ExportResourceType**](ExportResourceType.md) |  |  |
| **format** | **Array&lt;String&gt;** |  | [optional] |
| **output** | [**ExportRequestOutput**](ExportRequestOutput.md) |  |  |
| **query** | **Object** |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "resourceType": "Messages",
  "format": [
    "messageId",
    "dateUpdated",
    "status"
  ],
  "output": {
    "type": "csv"
  },
  "query": {
    "direction": "inbound"
  }
}'

# create an instance of ExportRequest from a JSON string
instance = Freeclimb::ExportRequest.build_from_hash(JSON.parse(json))
```

