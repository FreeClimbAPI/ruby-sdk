# Percl

The Performance Command Language (PerCL) defines a set of instructions, written in JSON format, that express telephony actions to be performed in response to an event on the FreeClimb platform. FreeClimb communicates with the application server when events associated with the application occur, so the webserver can instruct FreeClimb how to handle such events using PerCL scripts.

When creating a Percl object, required parameters must be used in the contructer while optional parameters must be set direclty on the given Percl object. Example:
```ruby
digits = '630'
send_digits = Percl::SendDigits.new(digits)
send_digits.pauseMs = '500'
```

## Documentation for PerCL Responses
Class | Description
------------ | -------------
[*Percl::OutDial*](percl.md#outdial) | The OutDial command is used to call a phone number 
*Percl::Hangup* | The Hangup command terminates a Call
*Percl::Pause* | The Pause command halts execution of the current PerCL script for a specified number of millisecond
*Percl::Redirect* | The Redirect command transfers control of a Call to the PerCL at a different URL
*Percl::SendDigits* | The SendDigits command plays DTMF tones on a live Call. This is useful for navigating through IVR menus or dialing extensions


## Percl::OutDial

The OutDial command is used to call a phone number

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  action_url = 'action_url_example'
  call_connect_url = 'call_connect_url_example'
  calling_number = 'calling_number_example'
  destination = 'destination_example'

  out_dial = Percl::OutDial.new(action_url, call_connect_url, calling_number, destination)
  script = Percl::Script.new
  script.add(out_dial)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **actionUrl** | **String**| URL to which FreeClimb sends an HTTP POST request. 
 **callConnectUrl** | **String**| URL to which FreeClimb makes an HTTP POST request informing the result of the OutDial.
 **callingNumber** | **String** | The caller ID to show to the called party when FreeClimb calls. This can be one of the following: The To or From number provided in the first Webhook to your webserver. Any phone number you have purchased from FreeClimb.
 **destination** | **String** | E.164 representation of the phone number to Call. 
 **ifMachine** | **String** | Specifies how FreeClimb should handle this OutDial if an answering machine answers the Call. Valid values: `redirect` invokes the ifMachineUrl for instructions. `hangup` hangs up the Call. The ifMachineUrl will not be invoked. | [optional]
 **ifMachineUrl** | **String** | When the `ifMachine` flag is set to `redirect`, this attribute specifies a URL to which FreeClimb makes a POST request when an answering machine or a fax machine is detected. This URL is required if the `ifMachine` flag is set to `redirect`. Otherwise, it should not be included. | [required if `ifMachine` is set to `redirect`]
 **sendDigits** | **String** | DTMF tones to play to the outdialed Call. This is typically used to dial a number and then dial an extension. | [optional]
 **statusCallBackUrl** | **String** | When the outdialed Call leg terminates, FreeClimb sends a `callStatus` Webhook to the `statusCallbackUrl`. This is a notification only; any PerCL command returned is ignored. | [optional]
 **timeout** | **String** | Maximum time in seconds the `OutDial` command waits for the called party to answer the Call. When a timeout occurs, FreeClimb invokes the `callConnectUrl` Webhook to report that the out-dialed Call has ended with a status of `noAnswer`. | [optional]


## Percl::Hangup

The Hangup command terminates a Call

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  hangup = Percl::Hangup.new
  script = Percl::Script.new
  script.add(out_dial)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**callId** | **String** | The ID of the Call leg to hang up. If not specified, the Call leg corresponding to the current PerCL execution context hangs up. | [optional]
**reason** | **String** | The user defined reason for the hangup. In general, applications should use a set of enumerated values that are predefined to cover all exit points of the Call flows for the given application. | [optional]

## Percl::Pause

The `Pause` command halts execution of the current PerCL script for a specified number of milliseconds. If `Pause` is the first command in a PerCL document, FreeClimb will wait for the specified time to elapse before picking up the call.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  pause = Percl::Pause.new(2000)
  script = Percl::Script.new
  script.add(out_dial)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**length** | **Integer** | Length in milliseconds. FreeClimb will wait silently before continuing on. 


## Percl::Redirect

The `Redirect` command transfers control of a Call to the PerCL at a different URL. `Redirect` is a terminal command, so any actions following it are never executed.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  redirect = Percl::Redirect.new('MOCK_REDIRECT_URL')
  script = Percl::Script.new
  script.add(redirect)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**actionUrl** | **String** | URL to request a new PerCL script to continue with the current Call's processing. When `Redirect` invokes the `actionUrl`, an `inbound` Webhook is sent.


## Percl::SendDigits

The `SendDigits` command plays DTMF tones on a live Call. This is useful for navigating through IVR menus or dialing extensions.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  send = Percl::SendDigits.new('12367#')
  script = Percl::Script.new
  script.add(send)
  script.to_json
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**digits** | **String** | String containing the digits to be played. The string cannot be empty and can include any digit, plus `#`, or `*`, and allows embedding specification for delay or pause between the output of individual digits.
**pauseMs** | **Integer** | Pause between digits in milliseconds. Valid values are 100-1000 milliseconds and will be adjusted by FreeClimb to satisfy the constraint. | [optional]


## Percl::Reject

The `Reject` command blocks an incoming Call. Using `Reject` is the only way to prevent FreeClimb from answering a Call. Any other response will result in an answered Call and your account will be billed.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  reject = Percl::Reject.new
  script = Percl::Script.new
  script.add(reject)
  script.to_json
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**reason** | **String** | Reason for the rejection. This can be any string value. In general, applications should use a set of enumerated values that are predefined to cover all exit points of the call flows for the given application. | [optional]


## Percl::CreateConference

The CreateConference command does exactly what its name implies — it creates an unpopulated Conference (one without any Participants). Once created, a Conference remains in FreeClimb until explicitly terminated by a customer. Once a Conference has been terminated, it can no longer be used.

## Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  create_conference = Percl::CreateConference.new('MOCK_ACTION_URL')
  script = Percl::Script.new
  script.add(create_conference)
  script.to_json
end
```

## Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**actionUrl** | **String** | This URL is invoked once the Conference is successfully created. Actions on the Conference, such as adding Participants, can be performed via the PerCL script returned in the response. 
**alias** | **String** | Descriptive name for the Conference. | [optional]
**playBeep** | **String** | Indicates whether to play a beep when a Participant enters or leaves the Conference. either `always`, `never`, `entryOnly`, or `exitOnly`. Leaving this unset will make conference default to `always` | [optional]
**record** | **String** | When set to `true`, the entire Conference is recorded. The `statusCallbackUrl` of the Conference will receive a `conferenceRecordingEnded` Webhook when the Conference transitions from the `inProgress` to empty state. | [optional]
**waitUrl** | **String** | If specified, this URL provides the custom hold music for the Conference when it is in the populated state. This attribute is always fetched using HTTP GET and is fetched just once – when the Conference is created. The URL must be an audio file that is reachable and readable by FreeClimb. | [optional]
**statusCallbackUrl** | **String** | This URL is invoked when the status of the Conference changes or when a recording of the Conference has become available. | [optional]


## Percl::TerminateConference

The `TerminateConference` command terminates an existing Conference. Any active participants are hung up on by FreeClimb. If this is not the desired behavior, use the `RemoveFromConference` command to unbridge Calls that should not be hung up.

Note: The Call requesting TerminateConference must be on the same Conference for this command to execute.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  terminate = Percl::TerminateConference.new('MOCK_CONFERENCE_ID')
  script = Percl::Script.new
  script.add(terminate)
  script.to_json
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**conferenceId** | **String** | ID of the conference to terminate.


## Percl::AddToConference

The `AddToConference` command adds a Participant to a Conference. If this Participant currently is in another Conference, the Participant is first removed from that Conference. Two Call legs can be bridged together by creating a Conference and adding both Call legs to it via `AddToConference`.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  # Assuming Conference is already created
  add = Percl::AddToConference.new('MOCK_CONF_ID', 'MOCK_CALL_ID')
  script = Percl::Script.new
  script.add(add)
  script.to_json
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**conferenceId** | **String** | ID of the Conference to which to add the Participant (Call leg). Conference must exist or an error will result.
**callId** | **String** | ID of the Call that will be added to the specified Conference. The Call must be in progress or an error will result. If the Call is part of an existing Conference, it is first removed from that Conference and is then moved to the new one.
**startConfOnEnter** | **Boolean** | Flag that indicates whether a Conference starts upon entry of this particular Participant. This is usually set to `true` for moderators and `false` for all other Participants. | [optional]
**talk** | **Boolean** | If `true`, the Participant joins the Conference with talk privileges. This may be modified later via the REST API or `SetTalk` PerCL command. | [optional]
**listen** | **Boolean** | If `true`, the Participant joins the Conference with listen privileges. This may be modified later via the REST API or `SetListen` PerCL command. | [optional]
**allowCallControl** | **Boolean** | If `true`, Call control will be enabled for this Participant's Call leg. | [optional]
**callControlSequence** | **String** | Defines a sequence of digits that, when entered by this caller, invokes the `callControlUrl`. Only digits plus '*', and '#' may be used. | [`required` if allowCallControl is `true`]
**callControlUrl** | **String** | URL to be invoked when this Participant enters the digit sequence defined in the `callControlSequence` attribute. |  [`required` if allowCallControl is `true`]
**leaveConferenceUrl** | **String** | URL to be invoked when the Participant leaves the Conference. | [optional]
**notificationUrl** | **String** | When the Participant enters the Conference, this URL will be invoked using an HTTP POST request with the standard request parameters. | [optional]


## Percl::RemoveFromConference

The `RemoveFromConference` command removes a Participant from a Conference but does not hang up. Instead, the Call is simply unbridged and what happens next with the Call is determined by the PerCL returned in response to the `leaveConferenceUrl` attribute.

## Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  # Assuming Conference is already created and participant is in conference
  remove = Percl::RemoveFromConference.new('MOCK_CALL_ID')
  script = Percl::Script.new
  script.add(remove)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**callId** | **String** | ID of the Call leg to be removed from the Conference. The Call must be in a Conference or an error will be triggered.



## Percl::SetListen

The `SetListen` command enables or disables the listen privilege for a Conference Participant provided both calls are in the same conference. The Participant can hear what the other participants are saying only if this privilege is enabled.

### Example


```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  # Assuming Conference is already created and participant is in conference
  listen = Percl::SetListen.new('MOCK_CALL_ID')
  script = Percl::Script.new
  script.add(listen)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**callId** | **String** | ID of the call leg that is to be assigned the listen privilege. The Call must be in a Conference or an error will be triggered.
**listen** | **Boolean** | Specifying `false` will silence the Conference for this Participant. | [optional]


## Percl::SetTalk

The `SetTalk` command enables or disables the talk privilege for a Participant in a Conference provided both calls are in the same conference. If 'true', no audio from that Participant is shared with the other Participants of the Conference.

### Example

```ruby
# load the gems
require 'sinatra'
require 'freeclimb'
require 'json'

post '/voice' do 
  # Assuming Conference is already created and participant is in conference
  talk = Percl::SetTalk.new('MOCK_CALL_ID')
  script = Percl::Script.new
  script.add(talk)
  script.to_json
end
```

### Parameters
Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**callId** | **String** | ID of the call leg that is to be muted or unmuted. The Call must be in a Conference or an error will be triggered.
**talk** | **Boolean** | Specifying `false` mutes the Participant. | [optional]