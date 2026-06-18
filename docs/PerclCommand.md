# Freeclimb::PerclCommand

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **command** | **String** | Name of PerCL Command (this is automatically derived from mapping configuration and should not be manually supplied in any arguments) | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "string"
}'

# create an instance of PerclCommand from a JSON string
instance = Freeclimb::PerclCommand.build_from_hash(JSON.parse(json))
```

