# Freeclimb::QueueMember

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | URI for this Queue Member resource, relative to the API base URL. | [optional] |
| **call_id** | **String** | ID of the Call associated with this Queue Member. | [optional] |
| **wait_time** | **Integer** | Number of seconds the Member has been in the queue. | [optional] |
| **position** | **Integer** | Member&#39;s current position in the Queue, 1 indexed. | [optional] |
| **date_enqueued** | **String** | Date that the Member was enqueued (GMT), given in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "uri": "string",
  "callId": "string",
  "waitTime": 0,
  "position": 0,
  "dateEnqueued": "string"
}'

# create an instance of QueueMember from a JSON string
instance = Freeclimb::QueueMember.build_from_hash(JSON.parse(json))
```

