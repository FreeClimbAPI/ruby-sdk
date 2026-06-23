# Freeclimb::CompletionRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **query** | **String** | Question to ask the Knowledge Base |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "query": "What are your business hours?"
}'

# create an instance of CompletionRequest from a JSON string
instance = Freeclimb::CompletionRequest.build_from_hash(JSON.parse(json))
```

