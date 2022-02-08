# Freeclimb::BuyIncomingNumberRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **phone_number** | **String** | Phone number to purchase in E.164 format (as returned in the list of Available Phone Numbers). |  |
| **_alias** | **String** | Description for this new incoming phone number (max 64 characters). | [optional] |
| **application_id** | **String** | ID of the application that should handle phone calls to the number. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::BuyIncomingNumberRequest.new(
  phone_number: null,
  _alias: null,
  application_id: null
)
```

