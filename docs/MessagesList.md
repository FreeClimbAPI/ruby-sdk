# Freeclimb::MessagesList

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
| **messages** | [**Array&lt;MessageResult&gt;**](MessageResult.md) | Array of messages | [optional] |

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
  "messages": [
    {
      "uri": "string",
      "dateCreated": "string",
      "dateUpdated": "string",
      "revision": 0,
      "accountId": "string",
      "messageId": "string",
      "status": "new",
      "from": "string",
      "to": "string",
      "text": "string",
      "direction": "string",
      "notificationUrl": "https://www.example.com",
      "brandId": "string",
      "campaignId": "string",
      "segmentCount": 0,
      "mediaUrls": [
        "https://www.example.com"
      ],
      "tfn": {
        "campaignId": "string"
      },
      "phoneNumberId": "string",
      "applicationId": "string"
    }
  ]
}'

# create an instance of MessagesList from a JSON string
instance = Freeclimb::MessagesList.build_from_hash(JSON.parse(json))
```

