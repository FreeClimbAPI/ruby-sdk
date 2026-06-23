# Freeclimb::MessageDeliveryWebhook

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **request_type** | **String** | Value will be messageDelivery - An SMS message has been received by the platform and is being delivered to the customer application associated with the destination number. | [optional] |
| **account_id** | **String** | Account ID associated with your account. | [optional] |
| **from** | **String** | Phone number of the party that initiated the Call (in E.164 format). | [optional] |
| **to** | **String** | Phone number provisioned to you and to which this Call is directed (in E.164 format). | [optional] |
| **text** | **String** | Body of the SMS message. | [optional] |
| **direction** | **String** | Value will be inbound to indicate the receipt of a message into the FreeClimb platform. | [optional] |
| **application_id** | **String** | ID of the application to which the destination number is assigned. | [optional] |
| **status** | **String** | Value will be received to indicate that the platform has successfully received the incoming message. | [optional] |
| **phone_number_id** | **String** | ID of the destination phone number. | [optional] |
| **uri** | **String** | The URI for this resource, relative to the API base URL | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "requestType": "messageDelivery",
  "accountId": "string",
  "from": "string",
  "to": "string",
  "text": "string",
  "direction": "string",
  "applicationId": "string",
  "status": "string",
  "phoneNumberId": "string",
  "uri": "string"
}'

# create an instance of MessageDeliveryWebhook from a JSON string
instance = Freeclimb::MessageDeliveryWebhook.build_from_hash(JSON.parse(json))
```

