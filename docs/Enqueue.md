# Freeclimb::Enqueue

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_url** | **String** | A request is made to this URL when the Call leaves the Queue, which can occur if enqueue of the Call fails or when the call is dequeued via the &#x60;Dequeue&#x60; command, the REST API (POST to Queue Member resource), or the caller hangs up. | 
**notification_url** | **String** | URL to be invoked when the call enters the queue. The request to the URL contains the standard request parameters.This is a notification only; any PerCL returned will be ignored. | [optional] 
**queue_id** | **String** | ID of the Queue to which to add the Call. If the Queue does not exist, it will be created. The ID must start with QU followed by 40 hex characters. | 
**wait_url** | **String** | A request is made to this URL when the Call leaves the Queue, which can occur if enqueue of the Call fails or when the call is dequeued via the &#x60;Dequeue&#x60; command, the REST API (POST to Queue Member resource), or the caller hangs up. | 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::Enqueue.new(action_url: null,
                                 notification_url: null,
                                 queue_id: null,
                                 wait_url: null)
```


