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

instance = Freeclimb::UpdateConferenceParticipantRequest.new(
  talk: null,
  listen: null,
  dtmf_pass_through: null
)
```

