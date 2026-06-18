# Freeclimb::Play

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **file** | **String** | RL of the audio file to be played to the caller. The URL can be the &#x60;recordingUrl&#x60; generated from the &#x60;RecordUtterance&#x60; or &#x60;StartRecordCall&#x60; PerCL commands.  |  |
| **loop** | **Integer** | Number of times the audio file is played. Specifying &#39;0&#39; causes the Play action to loop until the Call is hung up. | [optional] |
| **privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "Play",
  "file": "string",
  "loop": 0,
  "privacyMode": false
}'

# create an instance of Play from a JSON string
instance = Freeclimb::Play.build_from_hash(JSON.parse(json))
```

