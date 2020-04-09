# Freeclimb::MakeCallRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**from** | **String** | Phone number to use as the caller ID. This can be: (a) The To or From number provided in FreeClimb&#39;s initial request to your app or (b) Any incoming phone number you have purchased from FreeClimb. | 
**to** | **String** | Phone number to place the Call to. | 
**application_id** | **String** | ID of the application FreeClimb should use to handle this phone call. FreeClimb will use the &#x60;callConnectUrl&#x60; and &#x60;statusCallbackUrl&#x60; set on the application. The application must have a &#x60;callConnectUrl&#x60; associated with it or an error will be returned. The application’s &#x60;voiceUrl&#x60; parameter is not used for outbound calls. | 
**send_digits** | **String** | String of digits to dial after connecting to the number. It can include digits &#x60;0-9&#x60;, &#x60;*&#x60;, and &#x60;#&#x60;, and allows embedding a pause between the output of individual digits. The default pause is 500 milliseconds. So, a string such as *1234#* will be played in 2 seconds because of the 4 standard pauses implied within the string. A custom pause is specified by including a positive integer wrapped in curly braces: {n}. For more information, see **sendDigits examples** below. | [optional] 
**if_machine** | **String** | Specifies how FreeClimb should handle this Call if an answering machine answers it. | [optional] 
**if_machine_url** | **String** | This attribute specifies a URL to which FreeClimb will make a POST request when an answering machine or a fax machine is detected. This URL is required if the ifMachine flag is set to redirect. When ifMachine is set to hangup, ifMachineUrl must not be included in the request. For more information, see **ifMachineUrl example** below. | [optional] 
**timeout** | **Integer** | Number of seconds that FreeClimb should allow the phone to ring before assuming there is no answer. Default is 30 seconds. Maximum allowed ring-time is determined by the target phone&#39;s provider. Note that most providers limit ring-time to 120 seconds. | [optional] 
**parent_call_id** | **String** | The ID of the parent Call in the case that this new Call is meant to be treated as a child of an existing Call. This attribute should be included when possible to reduce latency when adding child calls to Conferences containing the parent Call. A call can only be used as a parent once the call is in progress or as an inbound call that is still ringing.  An outbound call is considered to be in progress once the outdialConnect or outdialApiConnect webhook is invoked.  An inbound call is ringing when the inbound webhook is invoked. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::MakeCallRequest.new(from: nil,
                                 to: nil,
                                 application_id: nil,
                                 send_digits: nil,
                                 if_machine: nil,
                                 if_machine_url: nil,
                                 timeout: nil,
                                 parent_call_id: nil)
```


