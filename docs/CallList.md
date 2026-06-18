# Freeclimb::CallList

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
| **calls** | [**Array&lt;CallResult&gt;**](CallResult.md) |  | [optional] |

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
  "calls": [
    {
      "uri": "string",
      "dateCreated": "string",
      "dateUpdated": "string",
      "revision": 0,
      "dateCreatedISO": "2022-01-01T00:00:00Z",
      "dateUpdatedISO": "2022-01-01T00:00:00Z",
      "callId": "string",
      "parentCallId": "string",
      "accountId": "string",
      "from": "string",
      "to": "string",
      "phoneNumberId": "string",
      "status": "queued",
      "startTime": "string",
      "startTimeISO": "2022-01-01T00:00:00Z",
      "connectTime": "string",
      "connectTimeISO": "2022-01-01T00:00:00Z",
      "endTime": "string",
      "endTimeISO": "2022-01-01T00:00:00Z",
      "duration": 0,
      "connectDuration": 0,
      "audioStreamDuration": 0,
      "direction": "inbound",
      "answeredBy": "human",
      "callerName": "string",
      "webRTC": false,
      "subresourceUris": {
        "logs": "string",
        "recordings": "string"
      },
      "applicationId": "string"
    }
  ]
}'

# create an instance of CallList from a JSON string
instance = Freeclimb::CallList.build_from_hash(JSON.parse(json))
```

