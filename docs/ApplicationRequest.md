# Freeclimb::ApplicationRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | A human readable description of the application, with maximum length 64 characters. | [optional] |
| **voice_url** | **String** | The URL that FreeClimb will request when an inbound call arrives on a phone number assigned to this application. Used only for inbound calls. | [optional] |
| **voice_fallback_url** | **String** | The URL that FreeClimb will request if it times out waiting for a response from the voiceUrl. Used for inbound calls only. Note: A PerCL response is expected to control the inbound call. | [optional] |
| **call_connect_url** | **String** | The URL that FreeClimb will request when an outbound call request is complete. Used for outbound calls only.  Note: A PerCL response is expected if the outbound call is connected (status&#x3D;InProgress) to control the call. | [optional] |
| **status_callback_url** | **String** | The URL that FreeClimb will request to pass call status (such as call ended) to the application.  Note: This is a notification only; any PerCL returned will be ignored. | [optional] |
| **sms_url** | **String** | The URL that FreeClimb will request when a phone number assigned to this application receives an incoming SMS message. Used for inbound SMS only.  Note: Any PerCL returned will be ignored. | [optional] |
| **sms_fallback_url** | **String** | The URL that FreeClimb will request if it times out waiting for a response from the smsUrl. Used for inbound SMS only.  Note: Any PerCL returned will be ignored. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "alias": "Customer Support Line",
  "voiceUrl": "https://www.myapp.com/voice",
  "voiceFallbackUrl": "https://www.myapp.com/voiceFallback",
  "callConnectUrl": "https://www.myapp.com/callConnect",
  "statusCallbackUrl": "https://www.myapp.com/status",
  "smsUrl": "https://www.myapp.com/sms",
  "smsFallbackUrl": "https://www.myapp.com/smsFallback"
}'

# create an instance of ApplicationRequest from a JSON string
instance = Freeclimb::ApplicationRequest.build_from_hash(JSON.parse(json))
```

