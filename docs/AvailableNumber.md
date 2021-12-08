# Freeclimb::AvailableNumber

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number** | **String** | The phone number, in E.164 format (+ country code and phone number: +18003608245). | [optional] 
**voice_enabled** | **Boolean** | Typically set to true for all numbers. | [optional] 
**sms_enabled** | **Boolean** | Indicates whether the phone number can send and receive SMS messages. | [optional] 
**region** | **String** | The state or province of this phone number. | [optional] 
**country** | **String** | The country of this phone number. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::AvailableNumber.new(phone_number: nil,
                                 voice_enabled: nil,
                                 sms_enabled: nil,
                                 region: nil,
                                 country: nil)
```


