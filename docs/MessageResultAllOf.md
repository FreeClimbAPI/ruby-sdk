# Freeclimb::MessageResultAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | String that uniquely identifies this account resource. | [optional] |
| **message_id** | **String** | String that uniquely identifies this message resource | [optional] |
| **status** | [**MessageStatus**](MessageStatus.md) |  | [optional] |
| **from** | **String** | Phone number in E.164 format that sent the message. | [optional] |
| **to** | **String** | Phone number in E.164 format that received the message. | [optional] |
| **text** | **String** | Message contents | [optional] |
| **direction** | **String** | Noting whether the message was inbound or outbound | [optional] |
| **notification_url** | **String** | URL invoked when message sent | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::MessageResultAllOf.new(
  account_id: null,
  message_id: null,
  status: null,
  from: null,
  to: null,
  text: null,
  direction: null,
  notification_url: null
)
```

