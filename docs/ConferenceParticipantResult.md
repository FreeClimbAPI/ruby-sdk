# Freeclimb::ConferenceParticipantResult

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **uri** | **String** | The URI for this resource, relative to /apiserver. | [optional] |
| **date_created** | **String** | The date that this resource was created (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **date_updated** | **String** | The date that this resource was last updated (GMT) in RFC 1123 format (e.g., Mon, 15 Jun 2009 20:45:30 GMT). | [optional] |
| **revision** | **Integer** | Revision count for the resource. This count is set to 1 on creation and is incremented every time it is updated. | [optional] |
| **account_id** | **String** | ID of the account that created this participant. | [optional] |
| **conference_id** | **String** | ID of the conference this participant is in. | [optional] |
| **call_id** | **String** | ID of the Call associated with this Participant. | [optional] |
| **talk** | **Boolean** | True if this Participant has talk privileges in the Conference. False otherwise. | [optional] |
| **listen** | **Boolean** | True if this Participant has listen privileges in the Conference. False otherwise. | [optional] |
| **dtmf_pass_through** | **Boolean** | True if this Participant had dtmfPassThrough privileges in the Conference. False otherwise. | [optional] |
| **start_conf_on_enter** | **Boolean** | True if this Participant joining the Conference caused the Conference to start (status &#x3D; inProgress). False otherwise. | [optional] |

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
  "conferenceId": "string",
  "callId": "string",
  "talk": false,
  "listen": false,
  "dtmfPassThrough": false,
  "startConfOnEnter": false
}'

# create an instance of ConferenceParticipantResult from a JSON string
instance = Freeclimb::ConferenceParticipantResult.build_from_hash(JSON.parse(json))
```

