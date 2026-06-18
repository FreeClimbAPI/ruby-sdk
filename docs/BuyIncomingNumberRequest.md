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
require 'json'

json = '{
  "phoneNumber": "+12025551234",
  "alias": "Main Office Line",
  "applicationId": "AP0123456789abcdefABCDEF0123456789abcdef03"
}'

# create an instance of BuyIncomingNumberRequest from a JSON string
instance = Freeclimb::BuyIncomingNumberRequest.build_from_hash(JSON.parse(json))
```

