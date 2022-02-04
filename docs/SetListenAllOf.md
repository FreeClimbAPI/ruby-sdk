# Freeclimb::SetListenAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** | ID of the call leg that is to be assigned the listen privilege. The Call must be in a Conference or an error will be triggered. |  |
| **listen** | **Boolean** | Specifying &#x60;false&#x60; will silence the Conference for this Participant. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::SetListenAllOf.new(
  call_id: null,
  listen: null
)
```

