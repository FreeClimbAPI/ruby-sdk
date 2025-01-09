# Freeclimb::RecordWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_type** | **String** | The context or reason why this request is being made. Will be record - The RecordUtterance command has completed and its actionUrl is being invoked. | [optional] |
| **account_id** | **String** | Account ID associated with your account. | [optional] |
| **call_id** | **String** | Unique identifier for this Call, generated by FreeClimb | [optional] |
| **from** | **String** | Phone number of the party that initiated the Call (in E.164 format). | [optional] |
| **to** | **String** | Phone number provisioned to the customer and to which this Call is directed (in E.164 format). | [optional] |
| **call_status** | [**CallStatus**](CallStatus.md) |  | [optional] |
| **direction** | [**CallDirection**](CallDirection.md) |  | [optional] |
| **conference_id** | **String** | This is only populated if request pertains to a conference. Otherwise, it is set to null. | [optional] |
| **queue_id** | **String** | This is only populated if the request pertains to a queue. Otherwise, it is set to null. | [optional] |
| **recording_id** | **String** | ID of the recording. | [optional] |
| **recording_url** | **String** | URL of the recorded audio file. This URL can be used as is in a Play command to play the recording (no authentication needed). It can also be used to download a recording file via the REST API. | [optional] |
| **recording_size** | **String** | Size of the recording in bytes | [optional] |
| **recording_format** | **String** | File type of the recording (audio/wav) | [optional] |
| **recording_duration_sec** | **Integer** | Duration of the recorded audio rounded up to the nearest second (in seconds) | [optional] |
| **term_reason** | [**RecordUtteranceTermReason**](RecordUtteranceTermReason.md) |  | [optional] |
| **parent_call_id** | **String** | ID of Call that created this leg (child call). | [optional] |
| **privacy_mode** | **Boolean** | If true then it indicates the recording will only be available for download for two minutes prior to it being deleted. This is to minimize risk of anyone else getting access to the url and attempting to access it. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::RecordWebhook.new(
  request_type: null,
  account_id: null,
  call_id: null,
  from: null,
  to: null,
  call_status: null,
  direction: null,
  conference_id: null,
  queue_id: null,
  recording_id: null,
  recording_url: null,
  recording_size: null,
  recording_format: null,
  recording_duration_sec: null,
  term_reason: null,
  parent_call_id: null,
  privacy_mode: null
)
```
