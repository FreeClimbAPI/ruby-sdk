# Freeclimb::QueueResult

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] 
**date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] 
**revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] 
**account_id** | **String** | ID of the account that created this Queue. | [optional] 
**queue_id** | **String** | A string that uniquely identifies this Queue resource. | [optional] 
**_alias** | **String** | A description for this Queue. | [optional] 
**max_size** | **Integer** | The maximum number of Calls permitted in the Queue. Default is 100. Maximum is 1000. | [optional] 
**current_size** | **String** | Count of Calls currently in the Queue. | [optional] 
**average_wait_time** | **String** | Average wait time (in seconds) of all Calls in the Queue. | [optional] 
**subresource_uris** | [**Object**](.md) | List of subresources for this Queue (which includes Queue members). | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::QueueResult.new(uri: nil,
                                 date_created: nil,
                                 date_updated: nil,
                                 revision: nil,
                                 account_id: nil,
                                 queue_id: nil,
                                 _alias: nil,
                                 max_size: nil,
                                 current_size: nil,
                                 average_wait_time: nil,
                                 subresource_uris: nil)
```


