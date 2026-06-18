# Freeclimb::TerminateConference

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "TerminateConference"
}'

# create an instance of TerminateConference from a JSON string
instance = Freeclimb::TerminateConference.build_from_hash(JSON.parse(json))
```

