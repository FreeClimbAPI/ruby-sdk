# Freeclimb::TTSEngine

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **name** | [**TTSEngineName**](TTSEngineName.md) |  | [optional] |
| **parameters** | **Hash&lt;String, Object&gt;** | Parameters for the TTS engine. The parameters are specific to the engine and are documented in the engine&#39;s documentation. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "name": "freeclimb.standard"
}'

# create an instance of TTSEngine from a JSON string
instance = Freeclimb::TTSEngine.build_from_hash(JSON.parse(json))
```

