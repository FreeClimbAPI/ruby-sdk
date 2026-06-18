# Freeclimb::MessageResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
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
| **media_urls** | **Array&lt;String&gt;** | an array of HTTP URLs which were attached this this message | [optional] |
| **tfn** | [**TFN**](TFN.md) |  | [optional] |
| **phone_number_id** | **String** | String that uniquely identifies the phoneNumber resource used to send this Message | [optional] |
| **application_id** | **String** | String that uniquely identifies the Application resource used to send this Message | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "uri": "string",
  "dateCreated": "string",
  "dateUpdated": "string",
  "revision": 0,
  "accountId": "string",
  "messageId": "string",
  "status": "new",
  "from": "string",
  "to": "string",
  "text": "string",
  "direction": "string",
  "notificationUrl": "https://www.example.com",
  "brandId": "string",
  "campaignId": "string",
  "segmentCount": 0,
  "mediaUrls": [
    "https://www.example.com"
  ],
  "tfn": {
    "campaignId": "string"
  },
  "phoneNumberId": "string",
  "applicationId": "string"
}'

# create an instance of MessageResult from a JSON string
instance = Freeclimb::MessageResult.build_from_hash(JSON.parse(json))
```

