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

instance = Freeclimb::ExportRequest.new(
  resource_type: null,
  format: null,
  output: null,
  query: null
)
```

