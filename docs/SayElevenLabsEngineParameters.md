# Freeclimb::SayElevenLabsEngineParameters

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_id** | **String** | The ID of the ElevenLabs model to use for the TTS. The complete list of valid values for the model_id attribute is shown below. | [optional][default to &#39;eleven_turbo_v2_5&#39;] |
| **voice_id** | **String** | The ID of the ElevenLabs voice to use for the TTS. The complete list of valid values for the voice_id attribute is shown below. | [optional] |
| **language_code** | **String** | The language code to use for the TTS. The complete list of valid values for the language_code attribute is shown below. | [optional][default to &#39;en&#39;] |
| **voice_settings** | [**SayElevenLabsEngineParametersVoiceSettings**](SayElevenLabsEngineParametersVoiceSettings.md) |  | [optional] |
| **pronunciation_dictionary** | [**Array&lt;SayElevenLabsEngineParametersPronunciationDictionaryInner&gt;**](SayElevenLabsEngineParametersPronunciationDictionaryInner.md) |  | [optional] |
| **seed** | **Integer** |  | [optional] |
| **previous_text** | **String** |  | [optional] |
| **next_text** | **String** |  | [optional] |
| **previous_request_ids** | **Array&lt;String&gt;** |  | [optional] |
| **next_request_ids** | **Array&lt;String&gt;** |  | [optional] |
| **apply_language_text_normalization** | **Boolean** |  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SayElevenLabsEngineParameters.new(
  model_id: null,
  voice_id: null,
  language_code: null,
  voice_settings: null,
  pronunciation_dictionary: null,
  seed: null,
  previous_text: null,
  next_text: null,
  previous_request_ids: null,
  next_request_ids: null,
  apply_language_text_normalization: null
)
```

