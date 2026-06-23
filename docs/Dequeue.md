# Freeclimb::Dequeue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "Dequeue"
}'

# create an instance of Dequeue from a JSON string
instance = Freeclimb::Dequeue.build_from_hash(JSON.parse(json))
```

