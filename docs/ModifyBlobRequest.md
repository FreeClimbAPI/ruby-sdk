# Freeclimb::ModifyBlobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **Object** |  |  |
| **_alias** | **String** | Custom identifier for this blob that is unique for the owning account. It will be set to the blobId by default if not provided. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::ModifyBlobRequest.new(
  blob: null,
  _alias: null
)
```

