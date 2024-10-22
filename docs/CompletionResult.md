# Freeclimb::CompletionResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **response** | **String** | The generative response from the KnowledgeBase |  |
| **status** | **String** | Completion result status. Possible values: success, no_context |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::CompletionResult.new(
  response: null,
  status: null
)
```

