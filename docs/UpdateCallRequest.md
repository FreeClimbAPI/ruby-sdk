# Freeclimb::UpdateCallRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Either &#x60;canceled&#x60; or &#x60;completed&#x60;.  Specifying &#x60;canceled&#x60; attempts to hang up calls that are queued without affecting calls already in progress. Specifying &#x60;completed&#x60; attempts to hang up a call already in progress. | 
**request_id** | **String** | RequestId for this request starting with prefix &#x60;RQ&#x60; followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response (e.g. &#x60;X-Pulse-Request-Id: &lt;requestId&gt;&#x60;). | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::UpdateCallRequest.new(status: null,
                                 request_id: null)
```


