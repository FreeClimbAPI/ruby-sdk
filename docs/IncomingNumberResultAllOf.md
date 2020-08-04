# Freeclimb::IncomingNumberResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**phone_number_id** | **String** | String that uniquely identifies this phone number resource. | [optional] 
**account_id** | **String** | ID of the account that owns this phone number. | [optional] 
**application_id** | **String** | ID of the Application that FreeClimb should contact if a Call or SMS arrives for this phone number or a Call from this number is placed. An incoming phone number is not useful until associated with an applicationId. | [optional] 
**phone_number** | **String** | Phone number in E.164 format. | [optional] 
**_alias** | **String** | Description for this phone number. Typically the conventionally-formatted version of the phone number. | [optional] 
**region** | **String** | State or province of this phone number. | [optional] 
**country** | **String** | Country of this phone number. | [optional] 
**voice_enabled** | **Boolean** | Indicates whether the phone number can handle Calls. Typically set to true for all numbers. | [optional] 
**sms_enabled** | **Boolean** | Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::IncomingNumberResultAllOf.new(phone_number_id: nil,
                                 account_id: nil,
                                 application_id: nil,
                                 phone_number: nil,
                                 _alias: nil,
                                 region: nil,
                                 country: nil,
                                 voice_enabled: nil,
                                 sms_enabled: nil)
```


