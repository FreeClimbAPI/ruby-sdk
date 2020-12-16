# Freeclimb::MessageResultAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**account_id** | **String** | String that uniquely identifies this account resource. | [optional] 
**message_id** | **String** | String that uniquely identifies this message resource | [optional] 
**status** | **String** | Indicates the state of the message through the message lifecycle including: new, queued, rejected, sending, sent, failed, received, undelivered, expired, deleted, and unknown | [optional] 
**from** | **String** | Phone number in E.164 format that sent the message. | [optional] 
**to** | **String** | Phone number in E.164 format that received the message. | [optional] 
**text** | **String** | Message contents | [optional] 
**direction** | **String** | Noting whether the message was inbound or outbound | [optional] 
**notification_url** | **String** | URL invoked when message sent | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::MessageResultAllOf.new(account_id: nil,
                                 message_id: nil,
                                 status: nil,
                                 from: nil,
                                 to: nil,
                                 text: nil,
                                 direction: nil,
                                 notification_url: nil)
```


