# Freeclimb::TTSEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**TTSEngineName**](TTSEngineName.md) |  | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** | Parameters for the TTS engine. The parameters are specific to the engine and are documented in the engine&#39;s documentation. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::TTSEngine.new(
  name: null,
  parameters: null
)
```

