# Freeclimb::FilterLogsRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **pql** | **String** | The filter query for retrieving logs. See **Performance Query Language** below. |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "pql": "2020-06-22T19:42:53.376Z < timestamp < 2020-06-23T19:42:53.376Z"
}'

# create an instance of FilterLogsRequest from a JSON string
instance = Freeclimb::FilterLogsRequest.build_from_hash(JSON.parse(json))
```

