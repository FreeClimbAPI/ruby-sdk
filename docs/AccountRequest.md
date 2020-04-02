# Freeclimb::AccountRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_alias** | **String** | Description for this account. | [optional] 
**label** | **String** | Group to which this account belongs. | [optional] 
**request_id** | **String** | RequestId for this request starting with prefix *RQ* followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response, e.g. X-Pulse-Request-Id: &lt;requestId&gt; | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::AccountRequest.new(_alias: nil,
                                 label: nil,
                                 request_id: nil)
```


