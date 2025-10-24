# Freeclimb::SayNeuralEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the TTS engine to use. Set to &#x60;freeclimb.neural&#x60; to use the freeclimb.neural TTS engine. | [optional][default to &#39;freeclimb.neural&#39;] |
| **parameters** | [**SayNeuralEngineParameters**](SayNeuralEngineParameters.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayNeuralEngine.new(
  name: null,
  parameters: null
)
```

