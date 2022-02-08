# Freeclimb::Capabilities

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice** | **Boolean** | Indicates whether a number can be used for voice calls. Replaces voiceEnabled. |  |
| **sms** | **Boolean** | Indicates whether a number can be used SMS messaging. Replaces smsEnabled. |  |
| **toll_free** | **Boolean** | Indicates that a number is toll-free and will make toll-free calls, and when enabled, toll-free messages. |  |
| **ten_dlc** | **Boolean** | Indicates that a number, if sms is true, will be used for 10DLC messaging |  |
| **short_code** | **Boolean** | Indicates that a number is a short code and can be used for short code messaging |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::Capabilities.new(
  voice: null,
  sms: null,
  toll_free: null,
  ten_dlc: null,
  short_code: null
)
```

