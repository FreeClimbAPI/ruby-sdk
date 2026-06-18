# Freeclimb::UpdateCallRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | [**UpdateCallRequestStatus**](UpdateCallRequestStatus.md) |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "status": "canceled"
}'

# create an instance of UpdateCallRequest from a JSON string
instance = Freeclimb::UpdateCallRequest.build_from_hash(JSON.parse(json))
```

