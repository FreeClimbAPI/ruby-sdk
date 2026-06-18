# Freeclimb::Pause

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **length** | **Integer** | Length in milliseconds. FreeClimb will wait silently before continuing on. |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "Pause",
  "length": 0
}'

# create an instance of Pause from a JSON string
instance = Freeclimb::Pause.build_from_hash(JSON.parse(json))
```

