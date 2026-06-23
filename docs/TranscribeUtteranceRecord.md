# Freeclimb::TranscribeUtteranceRecord

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **save_recording** | **Boolean** |  | [optional][default to false] |
| **max_length_sec** | **Integer** |  | [optional][default to 60] |
| **rcrd_termination_silence_time_ms** | **Integer** |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "saveRecording": false,
  "maxLengthSec": 60,
  "rcrdTerminationSilenceTimeMs": 0
}'

# create an instance of TranscribeUtteranceRecord from a JSON string
instance = Freeclimb::TranscribeUtteranceRecord.build_from_hash(JSON.parse(json))
```

