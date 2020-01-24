# OpenapiClient::IncomingNumberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**application_id** | **String** | ID of the Application that should handle calls to this number. | [optional] 
**_alias** | **String** | Description for this phone number. | [optional] 
**request_id** | **String** | RequestId for this request starting with prefix &#x60;RQ&#x60; followed by 40 hexadecimal characters. FreeClimb logs that are generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response (e.g., &#x60;X-Pulse-Request-Id: &lt;requestId&gt;&#x60;). | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::IncomingNumberRequest.new(application_id: null,
                                 _alias: null,
                                 request_id: null)
```


