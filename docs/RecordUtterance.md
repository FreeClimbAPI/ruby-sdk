# Freeclimb::RecordUtterance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_url** | **String** | URL to which information on the completed recording is submitted. The PerCL received in response is then used to continue with Call processing. |  |
| **silence_timeout_ms** | **Integer** | Interval of silence that should elapse before ending the recording. | [optional] |
| **finish_on_key** | **String** | Key that triggers the end of the recording. any digit, &#39;#&#39;, or &#39;*&#39; | [optional] |
| **max_length_sec** | **Integer** | Maximum length for the command execution in seconds. | [optional] |
| **play_beep** | **Boolean** | Indicates whether to play a beep sound before the start of the recording. If set to &#x60;false&#x60;, no beep is played. | [optional] |
| **auto_start** | **Boolean** | If &#x60;false&#x60;, recording begins immediately after the RecordUtterance command is processed. If &#x60;true&#x60;, recording begins when audio is present and if audio begins before the &#x60;maxLengthSec&#x60; timeout. If no audio begins before &#x60;maxLengthSec&#x60;, no recording is generated. | [optional] |
| **privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::RecordUtterance.new(
  action_url: null,
  silence_timeout_ms: null,
  finish_on_key: null,
  max_length_sec: null,
  play_beep: null,
  auto_start: null,
  privacy_mode: null
)
```

