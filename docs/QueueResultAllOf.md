# OpenapiClient::QueueResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | ID of the account that created this Queue. | [optional] 
**queue_id** | **String** | A string that uniquely identifies this Queue resource. | [optional] 
**_alias** | **String** | A description for this Queue. | [optional] 
**max_size** | **Integer** | The maximum number of Calls permitted in the Queue. Default is 100. Maximum is 1000. | [optional] 
**current_size** | **String** | Count of Calls currently in the Queue. | [optional] 
**average_wait_time** | **String** | Average wait time (in seconds) of all Calls in the Queue. | [optional] 
**subresource_uris** | [**Object**](.md) | List of subresources for this Queue (which includes Queue members). | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::QueueResultAllOf.new(account_id: null,
                                 queue_id: null,
                                 _alias: null,
                                 max_size: null,
                                 current_size: null,
                                 average_wait_time: null,
                                 subresource_uris: null)
```


