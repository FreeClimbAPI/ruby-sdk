# Freeclimb::TranscribeUtteranceAllOfRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_recording** | **Boolean** |  | [optional][default to false] |
| **max_length_sec** | **Integer** |  | [optional][default to 60] |
| **rcrd_termination_silence_time_ms** | **Integer** |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
  save_recording: null,
  max_length_sec: null,
  rcrd_termination_silence_time_ms: null
)
```

