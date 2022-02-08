# Freeclimb::AvailableNumber

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **capabilities** | [**Capabilities**](Capabilities.md) |  | [optional] |
| **phone_number** | **String** | The phone number, in E.164 format (+ country code and phone number: +18003608245). | [optional] |
| **voice_enabled** | **Boolean** | Typically set to true for all numbers. | [optional] |
| **sms_enabled** | **Boolean** | Indicates whether the phone number can send and receive SMS messages. | [optional] |
| **region** | **String** | The state or province of this phone number. | [optional] |
| **country** | **String** | The country of this phone number. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::AvailableNumber.new(
  capabilities: null,
  phone_number: null,
  voice_enabled: null,
  sms_enabled: null,
  region: null,
  country: null
)
```

