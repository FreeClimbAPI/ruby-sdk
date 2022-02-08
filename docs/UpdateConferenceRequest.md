# Freeclimb::UpdateConferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Description for this conference. Maximum 64 characters. | [optional] |
| **play_beep** | **String** | Controls when a beep is played. Valid values: &#x60;always&#x60;, &#x60;never&#x60;, &#x60;entryOnly&#x60;, &#x60;exitOnly&#x60;. | [optional][default to &#39;always&#39;] |
| **status** | **String** | New status of the conference. Valid values: &#x60;empty&#x60; or &#x60;terminated&#x60;. For more information, see **Status Parameter** below.** | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::UpdateConferenceRequest.new(
  _alias: null,
  play_beep: null,
  status: null
)
```

