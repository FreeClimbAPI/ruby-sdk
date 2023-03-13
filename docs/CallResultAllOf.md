# Freeclimb::CallResultAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **call_id** | **String** | String that uniquely identifies this Call resource. | [optional] |
| **parent_call_id** | **String** | ID of the Call that created this leg (child Call). | [optional] |
| **account_id** | **String** | ID of the account that owns this Call. | [optional] |
| **from** | **String** | Phone number that initiated this Call. | [optional] |
| **to** | **String** | Phone number that received this Call. | [optional] |
| **phone_number_id** | **String** | If the Call was inbound, this is the ID of the IncomingPhoneNumber that received the Call (DNIS). If the Call was outbound, this is the ID of the phone number from which the Call was placed (ANI). | [optional] |
| **call_status** | [**CallStatus**](CallStatus.md) |  | [optional] |
| **start_time** | **String** | Start time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed. | [optional] |
| **connect_time** | **String** | Time the Call was answered (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed. | [optional] |
| **end_time** | **String** | End time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call did not complete successfully. | [optional] |
| **duration** | **Integer** | Total length of the Call in seconds. Measures time between startTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls. | [optional] |
| **connect_duration** | **Integer** | Length of time that the Call was connected in seconds. Measures time between connectTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls. | [optional] |
| **direction** | [**CallDirection**](CallDirection.md) |  | [optional] |
| **answered_by** | [**AnsweredBy**](AnsweredBy.md) |  | [optional] |
| **subresource_uris** | **Object** | The list of subresources for this Call. These include things like logs and recordings associated with the Call. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::CallResultAllOf.new(
  call_id: null,
  parent_call_id: null,
  account_id: null,
  from: null,
  to: null,
  phone_number_id: null,
  call_status: null,
  start_time: null,
  connect_time: null,
  end_time: null,
  duration: null,
  connect_duration: null,
  direction: null,
  answered_by: null,
  subresource_uris: null
)
```

