# Freeclimb::QueueMemberList

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
| **queue_members** | [**Array&lt;QueueMember&gt;**](QueueMember.md) |  | [optional] |

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
  "queueMembers": [
    {
      "uri": "string",
      "callId": "string",
      "waitTime": 0,
      "position": 0,
      "dateEnqueued": "string"
    }
  ]
}'

# create an instance of QueueMemberList from a JSON string
instance = Freeclimb::QueueMemberList.build_from_hash(JSON.parse(json))
```

