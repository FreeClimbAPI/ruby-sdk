# Freeclimb::UpdateConferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | Description for this conference. Maximum 64 characters. | [optional] |
| **play_beep** | [**PlayBeep**](PlayBeep.md) |  | [optional] |
| **status** | [**UpdateConferenceRequestStatus**](UpdateConferenceRequestStatus.md) |  | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "alias": "Customer Conference",
  "playBeep": "always",
  "status": "empty"
}'

# create an instance of UpdateConferenceRequest from a JSON string
instance = Freeclimb::UpdateConferenceRequest.build_from_hash(JSON.parse(json))
```

