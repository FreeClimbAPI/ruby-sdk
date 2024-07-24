# Freeclimb::TranscribeUtteranceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_url** | **String** |  |  |
| **play_beep** | **Boolean** |  | [optional][default to false] |
| **record** | [**TranscribeUtteranceAllOfRecord**](TranscribeUtteranceAllOfRecord.md) |  | [optional] |
| **privacy_for_logging** | **Boolean** |  | [optional][default to false] |
| **privacy_for_recording** | **Boolean** |  | [optional][default to false] |
| **prompts** | **Array&lt;Object&gt;** |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::TranscribeUtteranceAllOf.new(
  action_url: null,
  play_beep: null,
  record: null,
  privacy_for_logging: null,
  privacy_for_recording: null,
  prompts: null
)
```

