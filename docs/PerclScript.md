# Freeclimb::PerclScript

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **commands** | [**Array&lt;PerclCommand&gt;**](PerclCommand.md) | A JSON array of PerCL commands | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "commands": [
    {
      "command": "string"
    }
  ]
}'

# create an instance of PerclScript from a JSON string
instance = Freeclimb::PerclScript.build_from_hash(JSON.parse(json))
```

