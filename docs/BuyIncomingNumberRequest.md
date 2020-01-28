# Freeclimb::BuyIncomingNumberRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | Phone number to purchase in E.164 format (as returned in the list of Available Phone Numbers). | 
**_alias** | **String** | Description for this new incoming phone number (max 64 characters). | [optional] 
**application_id** | **String** | ID of the application that should handle phone calls to the number. | [optional] 
**request_id** | **String** | RequestId for this request starting with prefix &#x60;RQ&#x60; followed by 40 hexadecimal characters. FreeClimb logs generated while processing this request will include this requestId. If it is not provided, FreeClimb will generate a requestId and return it as a header in the response, (e.g., &#x60;X-Pulse-Request-Id: &lt;requestId&gt;&#x60;). | [optional] 

## Code Sample

```ruby
require 'Freeclimb'

instance = Freeclimb::BuyIncomingNumberRequest.new(phone_number: null,
                                 _alias: null,
                                 application_id: null,
                                 request_id: null)
```


