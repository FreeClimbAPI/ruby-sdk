# Freeclimb::CreateConferenceAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_url** | **String** |  This URL is invoked once the Conference is successfully created. Actions on the Conference, such as adding Participants, can be performed via the PerCL script returned in the response.  | 
**_alias** | **Boolean** | Descriptive name for the Conference.  | [optional] 
**play_beep** | **String** | Indicates whether to play a beep when a Participant enters or leaves the Conference. either &#x60;always&#x60;, &#x60;never&#x60;, &#x60;entryOnly&#x60;, or &#x60;exitOnly&#x60;. Leaving this unset will make conference default to &#x60;always&#x60;  | [optional] 
**record** | **Boolean** | When set to &#x60;true&#x60;, the entire Conference is recorded. The &#x60;statusCallbackUrl&#x60; of the Conference will receive a &#x60;conferenceRecordingEnded&#x60; Webhook when the Conference transitions from the &#x60;inProgress&#x60; to empty state. | [optional] 
**status_callback_url** | **Boolean** | This URL is invoked when the status of the Conference changes or when a recording of the Conference has become available. | [optional] 
**wait_url** | **String** | If specified, this URL provides the custom hold music for the Conference when it is in the populated state. This attribute is always fetched using HTTP GET and is fetched just once – when the Conference is created. The URL must be an audio file that is reachable and readable by FreeClimb. | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::CreateConferenceAllOf.new(action_url: null,
                                 _alias: null,
                                 play_beep: null,
                                 record: null,
                                 status_callback_url: null,
                                 wait_url: null)
```


