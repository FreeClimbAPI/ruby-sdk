# Freeclimb::SayElevenLabsEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the TTS engine to use. Set to &#x60;elevenlabs.tts&#x60; to use the elevenlabs.tts TTS engine. | [optional][default to &#39;ElevenLabs&#39;] |
| **parameters** | [**SayElevenLabsEngineParameters**](SayElevenLabsEngineParameters.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayElevenLabsEngine.new(
  name: null,
  parameters: null
)
```

