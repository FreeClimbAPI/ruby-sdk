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
require 'json'

json = '{
  "command": "TranscribeUtterance",
  "actionUrl": "https://www.example.com",
  "playBeep": false,
  "record": {
    "saveRecording": false,
    "maxLengthSec": 60,
    "rcrdTerminationSilenceTimeMs": 0
  },
  "privacyForLogging": false,
  "privacyForRecording": false,
  "prompts": [
    {
      "command": "string"
    }
  ]
}'

# create an instance of TranscribeUtterance from a JSON string
instance = Freeclimb::TranscribeUtterance.build_from_hash(JSON.parse(json))
```

