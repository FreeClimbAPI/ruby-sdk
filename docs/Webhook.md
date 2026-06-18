# Freeclimb::Webhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_type** | **String** | Type of webhook request | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "requestType": "string"
}'

# create an instance of Webhook from a JSON string
instance = Freeclimb::Webhook.build_from_hash(JSON.parse(json))
```

