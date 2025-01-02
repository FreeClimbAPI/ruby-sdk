# Freeclimb::TranscribeUtterance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_url** | **String** |  |  |
| **play_beep** | **Boolean** |  | [optional][default to false] |
| **record** | [**TranscribeUtteranceRecord**](TranscribeUtteranceRecord.md) |  | [optional] |
| **privacy_for_logging** | **Boolean** |  | [optional][default to false] |
| **privacy_for_recording** | **Boolean** |  | [optional][default to false] |
| **prompts** | [**Array&lt;PerclCommand&gt;**](PerclCommand.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::TranscribeUtterance.new(
  action_url: null,
  play_beep: null,
  record: null,
  privacy_for_logging: null,
  privacy_for_recording: null,
  prompts: null
)
```

