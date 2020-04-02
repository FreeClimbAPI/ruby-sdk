# Freeclimb::RecordingResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] 
**date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] 
**recording_id** | **String** | String that uniquely identifies this recording resource. | [optional] 
**account_id** | **String** | ID of the account that created this recording. | [optional] 
**call_id** | **String** | ID of the Call that was recorded. If a Conference was recorded, this value is empty and the conferenceId property is populated. | [optional] 
**duration_sec** | **Integer** | Length of the recording in seconds. | [optional] 
**conference_id** | **String** | ID of the Conference that was recorded. If a Call was recorded, this value is empty and the callId property is populated. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::RecordingResult.new(uri: nil,
                                 date_created: nil,
                                 date_updated: nil,
                                 revision: nil,
                                 recording_id: nil,
                                 account_id: nil,
                                 call_id: nil,
                                 duration_sec: nil,
                                 conference_id: nil)
```


