# Freeclimb::SetListen

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **listen** | **Boolean** | Specifying &#x60;false&#x60; will silence the Conference for this Participant. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "SetListen",
  "listen": false
}'

# create an instance of SetListen from a JSON string
instance = Freeclimb::SetListen.build_from_hash(JSON.parse(json))
```

