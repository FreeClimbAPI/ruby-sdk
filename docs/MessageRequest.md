# Freeclimb::MessageRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **from** | **String** | Phone number to use as the sender. This must be an incoming phone number that you have purchased from FreeClimb. |  |
| **to** | **String** | Phone number to receive the message. Must be within FreeClimb&#39;s service area. |  |
| **text** | **String** | Text contained in the message (maximum 160 characters).   **Note:** For text, only ASCII characters are supported. |  |
| **notification_url** | **String** | When the Message changes status, this URL is invoked using HTTP POST with the messageStatus parameters.  **Note:** This is a notification only; any PerCL returned is ignored. | [optional] |
| **account_id** | **String** | String that uniquely identifies this account resource. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::MessageRequest.new(
  uri: null,
  date_created: null,
  date_updated: null,
  revision: null,
  from: null,
  to: null,
  text: null,
  notification_url: null,
  account_id: null
)
```

