# Freeclimb::CreateBlobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Custom identifier for this blob that is unique for the owning account. It will be set to the blobId by default if not provided. | [optional] |
| **expires_at** | **String** | An RFC3339 timestamp with millisecond resolution. This timestamp defines the time at which this blob will delete itself. It must not be more than 48 hours in the future and will default to 9 hours in the future if not provided. | [optional] |
| **blob** | **Object** |  |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::CreateBlobRequest.new(
  _alias: null,
  expires_at: 2006-01-02T15:04:05.000Z,
  blob: null
)
```

