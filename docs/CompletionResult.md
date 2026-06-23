# Freeclimb::CompletionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | The generative response from the KnowledgeBase |  |
| **status** | [**CompletionResultStatus**](CompletionResultStatus.md) |  |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "response": "string",
  "status": "success"
}'

# create an instance of CompletionResult from a JSON string
instance = Freeclimb::CompletionResult.build_from_hash(JSON.parse(json))
```

