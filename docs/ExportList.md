# Freeclimb::ExportList

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **total** | **Integer** | Total amount of requested resource. | [optional] |
| **start** | **Integer** | Resource index at start of current page | [optional] |
| **_end** | **Integer** | Resource index at end of current page | [optional] |
| **page** | **Integer** | Current page | [optional] |
| **num_pages** | **Integer** | Total number of pages | [optional] |
| **page_size** | **Integer** | Number of items per page | [optional] |
| **next_page_uri** | **String** | Uri to retrieve the next page of items | [optional] |
| **exports** | [**Array&lt;ExportResult&gt;**](ExportResult.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "total": 0,
  "start": 0,
  "end": 0,
  "page": 0,
  "numPages": 0,
  "pageSize": 0,
  "nextPageUri": "string",
  "exports": [
    {
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
    }
  ]
}'

# create an instance of ExportList from a JSON string
instance = Freeclimb::ExportList.build_from_hash(JSON.parse(json))
```

