# Freeclimb::PlatformError

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **code** | **Integer** |  | [optional] |
| **call** | **String** |  | [optional] |
| **url** | **String** |  | [optional] |
| **details** | **Object** |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "code": 0,
  "call": "Internal Failure",
  "url": "https://docs.freeclimb.com/reference/error-and-warning-dictionary#0"
}'

# create an instance of PlatformError from a JSON string
instance = Freeclimb::PlatformError.build_from_hash(JSON.parse(json))
```

