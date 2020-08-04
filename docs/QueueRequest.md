# Freeclimb::QueueRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Description for this Queue. Max length is 64 characters. | [optional] 
**max_size** | **Integer** | Maximum number of calls this queue can hold. Default is 100. Maximum is 1000. **Note:** Reducing the maxSize of a Queue causes the Queue to reject incoming requests until it shrinks below the new value of maxSize. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::QueueRequest.new(_alias: nil,
                                 max_size: nil)
```


