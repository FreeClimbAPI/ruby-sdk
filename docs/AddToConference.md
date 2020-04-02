# Freeclimb::AddToConference

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**allow_call_control** | **Boolean** | If &#x60;true&#x60;, Call control will be enabled for this Participant&#39;s Call leg. | [optional] 
**call_control_sequence** | **String** | Defines a sequence of digits that, when entered by this caller, invokes the &#x60;callControlUrl&#x60;. Only digits plus &#39;*&#39;, and &#39;#&#39; may be used. | [optional] 
**call_control_url** | **String** | URL to be invoked when this Participant enters the digit sequence defined in the &#x60;callControlSequence&#x60; attribute. | [optional] 
**conference_id** | **String** | ID of the Conference to which to add the Participant (Call leg). Conference must exist or an error will result. | 
**call_id** | **Boolean** | ID of the Call that will be added to the specified Conference. The Call must be in progress or an error will result. If the Call is part of an existing Conference, it is first removed from that Conference and is then moved to the new one. | 
**leave_conference_url** | **String** | URL to be invoked when the Participant leaves the Conference.  | [optional] 
**listen** | **Boolean** | If &#x60;true&#x60;, the Participant joins the Conference with listen privileges. This may be modified later via the REST API or &#x60;SetListen&#x60; PerCL command. | [optional] 
**notification_url** | **String** | When the Participant enters the Conference, this URL will be invoked using an HTTP POST request with the standard request parameters. | [optional] 
**start_conf_on_enter** | **Boolean** | Flag that indicates whether a Conference starts upon entry of this particular Participant. This is usually set to &#x60;true&#x60; for moderators and &#x60;false&#x60; for all other Participants. | [optional] 
**talk** | **Boolean** | If &#x60;true&#x60;, the Participant joins the Conference with talk privileges. This may be modified later via the REST API or &#x60;SetTalk&#x60; PerCL command.  | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::AddToConference.new(allow_call_control: nil,
                                 call_control_sequence: nil,
                                 call_control_url: nil,
                                 conference_id: nil,
                                 call_id: nil,
                                 leave_conference_url: nil,
                                 listen: nil,
                                 notification_url: nil,
                                 start_conf_on_enter: nil,
                                 talk: nil)
```


