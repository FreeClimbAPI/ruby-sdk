# Freeclimb::CallResultAllOfSubresourceUris

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **logs** | **String** | The URI for the logs associated with this Call. | [optional] |
| **recordings** | **String** | The URI for the recordings associated with this Call. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "logs": "string",
  "recordings": "string"
}'

# create an instance of CallResultAllOfSubresourceUris from a JSON string
instance = Freeclimb::CallResultAllOfSubresourceUris.build_from_hash(JSON.parse(json))
```

