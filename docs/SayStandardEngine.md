# Freeclimb::SayStandardEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | **String** | The name of the TTS engine to use. Set to &#x60;freeclimb.standard&#x60; for to use the standard freeclimb TTS engine. | [optional][default to &#39;freeclimb.standard&#39;] |
| **parameters** | [**SayStandardEngineParameters**](SayStandardEngineParameters.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayStandardEngine.new(
  name: null,
  parameters: null
)
```

