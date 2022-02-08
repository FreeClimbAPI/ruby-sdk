# Freeclimb::RejectAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **reason** | **String** | Reason for the rejection. This can be any string value. In general, applications should use a set of enumerated values that are predefined to cover all exit points of the call flows for the given application. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::RejectAllOf.new(
  reason: null
)
```

