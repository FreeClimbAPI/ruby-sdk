# OpenapiClient::AvailableNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | The phone number, in E.164 format (+ country code and phone number: +18003608245). | [optional] 
**voice_enabled** | **Boolean** | Typically set to true for all numbers. | [optional] 
**sms_enabled** | **Boolean** | Indicates whether the phone number can send and receive SMS messages. | [optional] 
**_alias** | **String** | A nicely-formatted version of the phone number. | [optional] 
**region** | **String** | The state or province of this phone number. | [optional] 
**country** | **String** | The country of this phone number. | [optional] 

## Code Sample

```ruby
require 'OpenapiClient'

instance = OpenapiClient::AvailableNumber.new(phone_number: null,
                                 voice_enabled: null,
                                 sms_enabled: null,
                                 _alias: null,
                                 region: null,
                                 country: null)
```


