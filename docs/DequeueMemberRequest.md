# Freeclimb::DequeueMemberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**request_id** | **String** | RequestId for this request starting with prefix *RQ* followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request include this requestId. If it is not provided, FreeClimb generates a requestId and returns it as a header in the response (e.g., X-Pulse-Request-Id: &lt;requestId&gt;). | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::DequeueMemberRequest.new(request_id: null)
```


