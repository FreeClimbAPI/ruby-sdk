# Freeclimb::ExportRequestOutput

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **type** | [**ExportOutputType**](ExportOutputType.md) |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "type": "csv"
}'

# create an instance of ExportRequestOutput from a JSON string
instance = Freeclimb::ExportRequestOutput.build_from_hash(JSON.parse(json))
```

