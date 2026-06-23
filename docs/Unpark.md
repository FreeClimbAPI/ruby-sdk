# Freeclimb::Unpark

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "Unpark"
}'

# create an instance of Unpark from a JSON string
instance = Freeclimb::Unpark.build_from_hash(JSON.parse(json))
```

