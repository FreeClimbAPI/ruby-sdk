# Freeclimb::UpdateConferenceRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Description for this conference. Maximum 64 characters. | [optional] 
**play_beep** | **String** | Controls when a beep is played. Valid values: &#x60;always&#x60;, &#x60;never&#x60;, &#x60;entryOnly&#x60;, &#x60;exitOnly&#x60;. | [optional] [default to &#39;always&#39;]
**status** | **String** | New status of the conference. Valid values: &#x60;empty&#x60; or &#x60;terminated&#x60;. For more information, see **Status Parameter** below.** | [optional] 
**request_id** | **String** | ID for this request starting with prefix *RQ* followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response (e.g. X-Pulse-Request-Id: &lt;requestId&gt;). | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::UpdateConferenceRequest.new(_alias: null,
                                 play_beep: null,
                                 status: null,
                                 request_id: null)
```


