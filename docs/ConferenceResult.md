# OpenapiClient::ConferenceResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] 
**date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] 
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
require 'OpenapiClient'

instance = OpenapiClient::ConferenceResult.new(uri: null,
                                 date_created: null,
                                 date_updated: null,
                                 revision: null,
                                 conference_id: null,
                                 account_id: null,
                                 _alias: null,
                                 play_beep: null,
                                 record: null,
                                 status: null,
                                 wait_url: null,
                                 action_url: null,
                                 status_callback_url: null,
                                 subresource_uris: null)
```


