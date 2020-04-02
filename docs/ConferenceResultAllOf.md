# Freeclimb::ConferenceResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**conference_id** | **String** | A string that uniquely identifies this Conference resource. | [optional] 
**account_id** | **String** | ID of the account that created this Conference. | [optional] 
**_alias** | **String** | A description for this Conference. | [optional] 
**play_beep** | **String** | Setting that controls when a beep is played. One of: always, never, entryOnly, exitOnly. Defaults to always. | [optional] 
**record** | **Boolean** | Flag indicating whether recording is enabled for this Conference. | [optional] 
**status** | **String** | The status of the Conference. One of: creating, empty, populated, inProgress, or terminated. | [optional] 
**wait_url** | **String** | URL referencing the audio file to be used as default wait music for the Conference when it is in the populated state. | [optional] 
**action_url** | **String** | URL invoked once the Conference is successfully created. | [optional] 
**status_callback_url** | **String** | URL to inform that the Conference status has changed. | [optional] 
**subresource_uris** | [**Object**](.md) | The list of subresources for this Conference. This includes participants and/or recordings. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::ConferenceResultAllOf.new(conference_id: nil,
                                 account_id: nil,
                                 _alias: nil,
                                 play_beep: nil,
                                 record: nil,
                                 status: nil,
                                 wait_url: nil,
                                 action_url: nil,
                                 status_callback_url: nil,
                                 subresource_uris: nil)
```


