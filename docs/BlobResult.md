# Freeclimb::BlobResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob_id** | **String** | Identifier which can be used to reference this blob in future interations. | [optional] |
| **account_id** | **String** |  | [optional] |
| **_alias** | **String** | Custom identifier for this blob that is unique for the owning account. It will be set to the blobId by default if not provided in the creation request. | [optional] |
| **revision** | **Integer** |  | [optional] |
| **date_created** | **Time** | An RFC3339 timestamp with millisecond resolution. It represents the time this blob was created. | [optional] |
| **date_updated** | **Time** | An RFC3339 timestamp with millisecond resolution. It represents the time this blob was last modified, which at creation will always equal dateCreated. | [optional] |
| **expires_at** | **Time** | An RFC3339 timestamp with millisecond resolution. It represents the time at which this blob will expire and self delete. | [optional] |
| **blob** | **Object** | Blob content | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "blobId": "BL0123456789abcdefABCDEF0123456789abcdef02",
  "accountId": "AC0123456789abcdefABCDEF0123456789abcdef01",
  "alias": "string",
  "revision": 0,
  "dateCreated": "2022-01-01T00:00:00Z",
  "dateUpdated": "2022-01-01T00:00:00Z",
  "expiresAt": "2022-01-01T00:00:00Z"
}'

# create an instance of BlobResult from a JSON string
instance = Freeclimb::BlobResult.build_from_hash(JSON.parse(json))
```

