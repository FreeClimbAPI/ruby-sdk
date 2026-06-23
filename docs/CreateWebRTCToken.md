# Freeclimb::CreateWebRTCToken

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **to** | **String** | E.164 formatted phone number to which calls using this token will be made. |  |
| **from** | **String** | E.164 formatted phone number owned by the reqeusting account from which calls using this token will be made. |  |
| **uses** | **Integer** | number of times this token may be used for a WebRTC call |  |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "to": "string",
  "from": "string",
  "uses": 0
}'

# create an instance of CreateWebRTCToken from a JSON string
instance = Freeclimb::CreateWebRTCToken.build_from_hash(JSON.parse(json))
```

