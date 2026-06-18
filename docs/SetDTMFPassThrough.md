# Freeclimb::SetDTMFPassThrough

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **dtmf_pass_through** | **Boolean** | Specifying &#x60;false&#x60; mutes the Participant&#39;s dtmf audio. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "SetDTMFPassThrough",
  "dtmfPassThrough": false
}'

# create an instance of SetDTMFPassThrough from a JSON string
instance = Freeclimb::SetDTMFPassThrough.build_from_hash(JSON.parse(json))
```

