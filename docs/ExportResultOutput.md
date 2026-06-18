# Freeclimb::ExportResultOutput

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

# create an instance of ExportResultOutput from a JSON string
instance = Freeclimb::ExportResultOutput.build_from_hash(JSON.parse(json))
```

