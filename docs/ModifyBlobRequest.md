# Freeclimb::ModifyBlobRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **blob** | **Object** |  |  |
| **_alias** | **String** | Custom identifier for this blob that is unique for the owning account. It will be set to the blobId by default if not provided. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "blob": {
    "firstName": "John",
    "lastName": "Doe"
  },
  "alias": "customer-profile"
}'

# create an instance of ModifyBlobRequest from a JSON string
instance = Freeclimb::ModifyBlobRequest.build_from_hash(JSON.parse(json))
```

