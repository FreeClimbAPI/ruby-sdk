# Freeclimb::HangupAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | The user defined reason for the hangup. In general, applications should use a set of enumerated values that are predefined to cover all exit points of the Call flows for the given application. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::HangupAllOf.new(
  reason: null
)
```

