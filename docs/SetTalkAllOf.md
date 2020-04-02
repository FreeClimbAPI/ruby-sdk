# Freeclimb::SetTalkAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**call_id** | **String** | ID of the call leg that is to be muted or unmuted. The Call must be in a Conference or an error will be triggered. | 
**talk** | **Boolean** | Specifying &#x60;false&#x60; mutes the Participant. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::SetTalkAllOf.new(call_id: nil,
                                 talk: nil)
```


