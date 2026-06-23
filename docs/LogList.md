# Freeclimb::LogList

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
| **logs** | [**Array&lt;LogResult&gt;**](LogResult.md) |  | [optional] |

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
  "logs": [
    {
      "timestamp": 0,
      "level": "info",
      "requestId": "string",
      "accountId": "string",
      "callId": "string",
      "message": "string"
    }
  ]
}'

# create an instance of LogList from a JSON string
instance = Freeclimb::LogList.build_from_hash(JSON.parse(json))
```

