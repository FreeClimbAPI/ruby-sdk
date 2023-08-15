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
| **brand_id** | **String** | The unique identifier for the brand associated with the message | [optional] |
| **campaign_id** | **String** | The unique identifier for the campaign associated with the message | [optional] |
| **segment_count** | **Float** | The number of segments into which the message was split | [optional] |

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
  notification_url: null,
  brand_id: null,
  campaign_id: null,
  segment_count: null
)
```

