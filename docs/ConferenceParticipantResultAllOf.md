# Freeclimb::ConferenceParticipantResultAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account_id** | **String** | ID of the account that created this participant. | [optional] |
| **conference_id** | **String** | ID of the conference this participant is in. | [optional] |
| **call_id** | **String** | ID of the Call associated with this Participant. | [optional] |
| **talk** | **Boolean** | True if this Participant has talk privileges in the Conference. False otherwise. | [optional] |
| **listen** | **Boolean** | True if this Participant has listen privileges in the Conference. False otherwise. | [optional] |
| **start_conf_on_enter** | **Boolean** | True if this Participant joining the Conference caused the Conference to start (status &#x3D; inProgress). False otherwise. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::ConferenceParticipantResultAllOf.new(
  account_id: null,
  conference_id: null,
  call_id: null,
  talk: null,
  listen: null,
  start_conf_on_enter: null
)
```

