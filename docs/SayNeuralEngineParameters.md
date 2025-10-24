# Freeclimb::SayNeuralEngineParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **voice** | **String** | The voice to use for the TTS. The complete list of valid values for the voice attribute is shown below. | [optional][default to &#39;Eve&#39;] |
| **text_type** | [**SayNeuralTextType**](SayNeuralTextType.md) |  | [optional] |
| **language** | **String** | The language to use for the TTS. The complete list of valid values for the language attribute is shown below. | [optional][default to &#39;en-US&#39;] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayNeuralEngineParameters.new(
  voice: null,
  text_type: null,
  language: null
)
```

