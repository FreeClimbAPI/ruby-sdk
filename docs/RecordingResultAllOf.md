# Freeclimb::RecordingResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**recording_id** | **String** | String that uniquely identifies this recording resource. | [optional] 
**account_id** | **String** | ID of the account that created this recording. | [optional] 
**call_id** | **String** | ID of the Call that was recorded. If a Conference was recorded, this value is empty and the conferenceId property is populated. | [optional] 
**duration_sec** | **Integer** | Length of the recording in seconds. | [optional] 
**conference_id** | **String** | ID of the Conference that was recorded. If a Call was recorded, this value is empty and the callId property is populated. | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::RecordingResultAllOf.new(recording_id: null,
                                 account_id: null,
                                 call_id: null,
                                 duration_sec: null,
                                 conference_id: null)
```


