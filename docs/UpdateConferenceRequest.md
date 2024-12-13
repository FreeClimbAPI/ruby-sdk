# Freeclimb::UpdateConferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Description for this conference. Maximum 64 characters. | [optional] |
| **play_beep** | [**PlayBeep**](PlayBeep.md) |  | [optional] |
| **status** | [**UpdateConferenceRequestStatus**](UpdateConferenceRequestStatus.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::UpdateConferenceRequest.new(
  _alias: null,
  play_beep: null,
  status: null
)
```

