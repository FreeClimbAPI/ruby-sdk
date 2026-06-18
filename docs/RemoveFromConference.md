# Freeclimb::RemoveFromConference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "RemoveFromConference"
}'

# create an instance of RemoveFromConference from a JSON string
instance = Freeclimb::RemoveFromConference.build_from_hash(JSON.parse(json))
```

