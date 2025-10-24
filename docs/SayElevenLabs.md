# Freeclimb::SayElevenLabs

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **text** | **String** | The message to be played to the caller using TTS. The size of the string is limited to 4 KB (or 4,096 bytes). An empty string will cause the command to be skipped. |  |
| **loop** | **Integer** | Number of times the text is said. Specifying &#39;0&#39; causes the &#x60;SayElevenLabs&#x60; action to loop until the Call is hung up. | [optional][default to 1] |
| **privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] |
| **engine** | [**SayElevenLabsEngine**](SayElevenLabsEngine.md) |  |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayElevenLabs.new(
  text: null,
  loop: null,
  privacy_mode: null,
  engine: null
)
```

