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
require 'json'

json = '{
  "alias": "customer-profile",
  "expiresAt": "2006-01-02T15:04:05.000Z",
  "blob": {
    "firstName": "John",
    "lastName": "Doe"
  }
}'

# create an instance of CreateBlobRequest from a JSON string
instance = Freeclimb::CreateBlobRequest.build_from_hash(JSON.parse(json))
```

