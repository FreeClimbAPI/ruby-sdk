# Freeclimb::SetTalk

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **talk** | **Boolean** | Specifying &#x60;false&#x60; mutes the Participant. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "SetTalk",
  "talk": false
}'

# create an instance of SetTalk from a JSON string
instance = Freeclimb::SetTalk.build_from_hash(JSON.parse(json))
```

