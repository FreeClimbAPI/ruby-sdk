# Freeclimb::ConferenceList

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
| **conferences** | [**Array&lt;ConferenceResult&gt;**](ConferenceResult.md) |  | [optional] |

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
  "conferences": [
    {
      "uri": "string",
      "dateCreated": "string",
      "dateUpdated": "string",
      "revision": 0,
      "conferenceId": "string",
      "accountId": "string",
      "alias": "string",
      "record": false,
      "status": "empty",
      "waitUrl": "https://www.example.com",
      "actionUrl": "https://www.example.com",
      "statusCallbackUrl": "https://www.example.com"
    }
  ]
}'

# create an instance of ConferenceList from a JSON string
instance = Freeclimb::ConferenceList.build_from_hash(JSON.parse(json))
```

