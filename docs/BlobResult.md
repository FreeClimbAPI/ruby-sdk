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

instance = Freeclimb::BlobResult.new(
  blob_id: BL88615a9b4ca7e9aad57d9057773fc74268b9caf7,
  account_id: AC0534faec6b32da45f36166674d65b3903f784141,
  _alias: null,
  revision: null,
  date_created: null,
  date_updated: null,
  expires_at: null,
  blob: null
)
```

