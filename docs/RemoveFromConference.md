# Freeclimb::RemoveFromConference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** | ID of the Call leg to be removed from the Conference. The Call must be in a Conference or an error will be triggered. |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::RemoveFromConference.new(
  call_id: null
)
```

