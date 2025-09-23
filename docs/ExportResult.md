# Freeclimb::ExportResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | String that uniquely identifies this account resource. |  |
| **uri** | **String** |  |  |
| **date_created** | **String** |  |  |
| **date_updated** | **String** |  |  |
| **revision** | **Integer** |  |  |
| **export_id** | **String** | String that uniquely identifies this export resource |  |
| **status** | [**ExportStatus**](ExportStatus.md) |  |  |
| **size** | **Integer** |  |  |
| **resource_type** | [**ExportResourceType**](ExportResourceType.md) |  |  |
| **query** | **Object** | Query params used to filter exported documents |  |
| **format** | **Array&lt;String&gt;** | Desired fields of exported documents |  |
| **output** | [**ExportResultOutput**](ExportResultOutput.md) |  |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::ExportResult.new(
  account_id: null,
  uri: null,
  date_created: null,
  date_updated: null,
  revision: null,
  export_id: null,
  status: null,
  size: null,
  resource_type: null,
  query: null,
  format: null,
  output: null
)
```

