# Freeclimb::CallResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **date_created_iso** | **Time** | The date that this resource was created in ISO 8601 format (e.g., 2022-01-01T00:00:00.000Z). | [optional] |
| **date_updated_iso** | **Time** | The date that this resource was last updated in ISO 8601 format (e.g., 2022-01-01T00:00:00.000Z). | [optional] |
| **call_id** | **String** | String that uniquely identifies this Call resource. | [optional] |
| **parent_call_id** | **String** | ID of the Call that created this leg (child Call). | [optional] |
| **account_id** | **String** | ID of the account that owns this Call. | [optional] |
| **from** | **String** | Phone number that initiated this Call. | [optional] |
| **to** | **String** | Phone number that received this Call. | [optional] |
| **phone_number_id** | **String** | If the Call was inbound, this is the ID of the IncomingPhoneNumber that received the Call (DNIS). If the Call was outbound, this is the ID of the phone number from which the Call was placed (ANI). | [optional] |
| **status** | [**CallStatus**](CallStatus.md) |  | [optional] |
| **start_time** | **String** | Start time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed. | [optional] |
| **start_time_iso** | **Time** | Start time of the Call in ISO 8601 format (e.g., 2022-01-01T00:00:00.000Z). Empty if the Call has not yet been dialed. | [optional] |
| **connect_time** | **String** | Time the Call was answered (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call has not yet been dialed. | [optional] |
| **connect_time_iso** | **Time** | Time the Call was answered in ISO 8601 format (e.g., 2022-01-01T00:00:00.000Z). Empty if the Call has not yet been dialed. | [optional] |
| **end_time** | **String** | End time of the Call (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). Empty if the Call did not complete successfully. | [optional] |
| **end_time_iso** | **Time** | End time of the Call in ISO 8601 format (e.g., 2022-01-01T00:00:00.000Z). Empty if the Call did not complete successfully. | [optional] |
| **duration** | **Integer** | Total length of the Call in seconds. Measures time between startTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls. | [optional] |
| **connect_duration** | **Integer** | Length of time that the Call was connected in seconds. Measures time between connectTime and endTime. This value is empty for busy, failed, unanswered or ongoing Calls. | [optional] |
| **audio_stream_duration** | **Integer** | Length of time that the Call used the audio stream in seconds. This value is empty or zero when the Call did not use the audio stream. | [optional] |
| **direction** | [**CallDirection**](CallDirection.md) |  | [optional] |
| **answered_by** | [**AnsweredBy**](AnsweredBy.md) |  | [optional] |
| **caller_name** | **String** | The caller ID name (CNAM) for this Call. Empty if unavailable. | [optional] |
| **web_rtc** | **Boolean** | Indicates whether this Call was initiated via WebRTC. | [optional] |
| **subresource_uris** | [**CallResultAllOfSubresourceUris**](CallResultAllOfSubresourceUris.md) |  | [optional] |
| **application_id** | **String** | ApplicationId associated with the Call. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "uri": "string",
  "dateCreated": "string",
  "dateUpdated": "string",
  "revision": 0,
  "dateCreatedISO": "2022-01-01T00:00:00Z",
  "dateUpdatedISO": "2022-01-01T00:00:00Z",
  "callId": "string",
  "parentCallId": "string",
  "accountId": "string",
  "from": "string",
  "to": "string",
  "phoneNumberId": "string",
  "status": "queued",
  "startTime": "string",
  "startTimeISO": "2022-01-01T00:00:00Z",
  "connectTime": "string",
  "connectTimeISO": "2022-01-01T00:00:00Z",
  "endTime": "string",
  "endTimeISO": "2022-01-01T00:00:00Z",
  "duration": 0,
  "connectDuration": 0,
  "audioStreamDuration": 0,
  "direction": "inbound",
  "answeredBy": "human",
  "callerName": "string",
  "webRTC": false,
  "subresourceUris": {
    "logs": "string",
    "recordings": "string"
  },
  "applicationId": "string"
}'

# create an instance of CallResult from a JSON string
instance = Freeclimb::CallResult.build_from_hash(JSON.parse(json))
```

