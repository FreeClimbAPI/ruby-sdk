# Freeclimb::ApplicationRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | A human readable description of the application, with maximum length 64 characters. | [optional] 
**voice_url** | **String** | The URL that FreeClimb will request when an inbound call arrives on a phone number assigned to this application. Used only for inbound calls. | [optional] 
**voice_fallback_url** | **String** | The URL that FreeClimb will request if it times out waiting for a response from the voiceUrl. Used for inbound calls only. Note: A PerCL response is expected to control the inbound call. | [optional] 
**call_connect_url** | **String** | The URL that FreeClimb will request when an outbound call request is complete. Used for outbound calls only.  Note: A PerCL response is expected if the outbound call is connected (status&#x3D;InProgress) to control the call. | [optional] 
**status_callback_url** | **String** | The URL that FreeClimb will request to pass call status (such as call ended) to the application.  Note: This is a notification only; any PerCL returned will be ignored. | [optional] 
**sms_url** | **String** | The URL that FreeClimb will request when a phone number assigned to this application receives an incoming SMS message. Used for inbound SMS only.  Note: Any PerCL returned will be ignored. | [optional] 
**sms_fallback_url** | **String** | The URL that FreeClimb will request if it times out waiting for a response from the smsUrl. Used for inbound SMS only.  Note: Any PerCL returned will be ignored. | [optional] 
**request_id** | **String** | The requestId for this request starting with prefix \&quot;RQ\&quot; followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response, e.g. X-Pulse-Request-Id: &lt;requestId&gt; | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::ApplicationRequest.new(_alias: null,
                                 voice_url: null,
                                 voice_fallback_url: null,
                                 call_connect_url: null,
                                 status_callback_url: null,
                                 sms_url: null,
                                 sms_fallback_url: null,
                                 request_id: null)
```


