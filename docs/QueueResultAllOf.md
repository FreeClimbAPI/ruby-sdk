# Freeclimb::QueueResultAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this Queue. | [optional] |
| **queue_id** | **String** | A string that uniquely identifies this Queue resource. | [optional] |
| **_alias** | **String** | A description for this Queue. | [optional] |
| **max_size** | **Integer** | The maximum number of Calls permitted in the Queue. Default is 100. Maximum is 1000. | [optional] |
| **current_size** | **Integer** | Count of Calls currently in the Queue. | [optional] |
| **average_queue_removal_time** | **Integer** | The average amount of time (in seconds) for a call to be removed from the queue. | [optional] |
| **subresource_uris** | **Object** | List of subresources for this Queue (which includes Queue members). | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::QueueResultAllOf.new(
  account_id: null,
  queue_id: null,
  _alias: null,
  max_size: null,
  current_size: null,
  average_queue_removal_time: null,
  subresource_uris: null
)
```

