# Percl

The Performance Command Language (PerCL) defines a set of instructions, written in JSON format, that express telephony actions to be performed in response to an event on the FreeClimb platform. FreeClimb communicates with the application server when events associated with the application occur, so the webserver can instruct FreeClimb how to handle such events using PerCL scripts.

When creating a Percl object, required parameters must be used in the contructeR while optional parameters can be set direclty on the given Percl object.
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


## OutDial

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

  say = Percl::OutDial.new(action_url, call_connect_url, calling_number, destination)
  script = Percl::Script.new
  script.add(say)
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