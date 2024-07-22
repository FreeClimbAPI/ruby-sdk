# Freeclimb::AddToConferenceAllOf

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **allow_call_control** | **Boolean** | If &#x60;true&#x60;, Call control will be enabled for this Participant&#39;s Call leg. | [optional] |
| **call_control_sequence** | **String** | Defines a sequence of digits that, when entered by this caller, invokes the &#x60;callControlUrl&#x60;. Only digits plus &#39;*&#39;, and &#39;#&#39; may be used. | [optional] |
| **call_control_url** | **String** | URL to be invoked when this Participant enters the digit sequence defined in the &#x60;callControlSequence&#x60; attribute. | [optional] |
| **conference_id** | **String** | ID of the Conference to which to add the Participant (Call leg). Conference must exist or an error will result. |  |
| **leave_conference_url** | **String** | URL to be invoked when the Participant leaves the Conference.  | [optional] |
| **listen** | **Boolean** | If &#x60;true&#x60;, the Participant joins the Conference with listen privileges. This may be modified later via the REST API or &#x60;SetListen&#x60; PerCL command. | [optional] |
| **notification_url** | **String** | When the Participant enters the Conference, this URL will be invoked using an HTTP POST request with the standard request parameters. | [optional] |
| **start_conf_on_enter** | **Boolean** | Flag that indicates whether a Conference starts upon entry of this particular Participant. This is usually set to &#x60;true&#x60; for moderators and &#x60;false&#x60; for all other Participants. | [optional] |
| **talk** | **Boolean** | If &#x60;true&#x60;, the Participant joins the Conference with talk privileges. This may be modified later via the REST API or &#x60;SetTalk&#x60; PerCL command.  | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::AddToConferenceAllOf.new(
  allow_call_control: null,
  call_control_sequence: null,
  call_control_url: null,
  conference_id: null,
  leave_conference_url: null,
  listen: null,
  notification_url: null,
  start_conf_on_enter: null,
  talk: null
)
```

