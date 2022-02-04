# Freeclimb::SendDigitsAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **digits** | **String** | String containing the digits to be played. The string cannot be empty and can include any digit, plus &#x60;#&#x60;, or &#x60;*&#x60;, and allows embedding specification for delay or pause between the output of individual digits. |  |
| **pause_ms** | **Integer** | Pause between digits in milliseconds. Valid values are 100-1000 milliseconds and will be adjusted by FreeClimb to satisfy the constraint. | [optional] |
| **privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SendDigitsAllOf.new(
  digits: null,
  pause_ms: null,
  privacy_mode: null
)
```

