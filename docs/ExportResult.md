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
require 'json'

json = '{
  "accountId": "AC0123456789abcdefABCDEF0123456789abcdef07",
  "uri": "/Accounts/AC0123456789abcdefABCDEF0123456789abcdef07/Exports/EX0123456789abcdefABCDEF0123456789abcdef08",
  "dateCreated": "Wed, 26 Jun 2024 15:45:06 UTC",
  "dateUpdated": "Wed, 26 Jun 2024 15:45:06 UTC",
  "revision": 1,
  "exportId": "EX0123456789abcdefABCDEF0123456789abcdef08",
  "status": "completed",
  "size": 12893786,
  "resourceType": "Messages",
  "query": {
    "direction": "inbound"
  },
  "format": [
    "messageId",
    "dateUpdated",
    "segmentCount",
    "status"
  ],
  "output": {
    "type": "csv"
  }
}'

# create an instance of ExportResult from a JSON string
instance = Freeclimb::ExportResult.build_from_hash(JSON.parse(json))
```

