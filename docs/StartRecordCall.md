# Freeclimb::StartRecordCall

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "StartRecordCall"
}'

# create an instance of StartRecordCall from a JSON string
instance = Freeclimb::StartRecordCall.build_from_hash(JSON.parse(json))
```

