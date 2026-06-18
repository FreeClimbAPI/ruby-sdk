# Freeclimb::BlobListResponse

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
| **blobs** | [**Array&lt;BlobResult&gt;**](BlobResult.md) |  | [optional] |

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
  "blobs": [
    {
      "blobId": "BL0123456789abcdefABCDEF0123456789abcdef02",
      "accountId": "AC0123456789abcdefABCDEF0123456789abcdef01",
      "alias": "string",
      "revision": 0,
      "dateCreated": "2022-01-01T00:00:00Z",
      "dateUpdated": "2022-01-01T00:00:00Z",
      "expiresAt": "2022-01-01T00:00:00Z"
    }
  ]
}'

# create an instance of BlobListResponse from a JSON string
instance = Freeclimb::BlobListResponse.build_from_hash(JSON.parse(json))
```

