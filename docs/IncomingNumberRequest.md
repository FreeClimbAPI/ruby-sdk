# Freeclimb::IncomingNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **application_id** | **String** | ID of the Application that should handle calls to this number. | [optional] |
| **_alias** | **String** | Description for this phone number. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::IncomingNumberRequest.new(
  application_id: null,
  _alias: null
)
```

