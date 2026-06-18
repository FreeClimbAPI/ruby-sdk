# Freeclimb::UpdateConferenceParticipantRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **talk** | **Boolean** | (Optional) Default is &#x60;true&#x60;. Setting to &#x60;false&#x60; mutes the Participant. FreeClimb returns an error and ignores any other value. | [optional] |
| **listen** | **Boolean** | (Optional) Default is &#x60;true&#x60;. Setting to &#x60;false&#x60; silences the Conference for this Participant. FreeClimb returns an error and ignores any other value. | [optional] |
| **dtmf_pass_through** | **Boolean** | (Optional) Default is &#x60;true&#x60;. Setting to &#x60;false&#x60; mutes dtmf audio for this Participant. FreeClimb returns an error and ignores any other value. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "talk": true,
  "listen": true,
  "dtmfPassThrough": true
}'

# create an instance of UpdateConferenceParticipantRequest from a JSON string
instance = Freeclimb::UpdateConferenceParticipantRequest.build_from_hash(JSON.parse(json))
```

