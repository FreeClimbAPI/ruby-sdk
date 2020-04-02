# Freeclimb::OutDialAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_url** | **String** | URL to which FreeClimb sends an HTTP POST request.  | 
**call_connect_url** | **String** | URL to which FreeClimb makes an HTTP POST request informing the result of the OutDial. | 
**calling_number** | **Float** | he caller ID to show to the called party when FreeClimb calls. This can be one of the following: The To or From number provided in the first Webhook to your webserver. Any phone number you have purchased from FreeClimb. | 
**destination** | **Float** | E.164 representation of the phone number to Call.  | 
**if_machine** | **String** | Specifies how FreeClimb should handle this OutDial if an answering machine answers the Call. Valid values: &#x60;redirect&#x60; invokes the ifMachineUrl for instructions. &#x60;hangup&#x60; hangs up the Call. The ifMachineUrl will not be invoked. | [optional] 
**if_machine_url** | **String** | When the &#x60;ifMachine&#x60; flag is set to &#x60;redirect&#x60;, this attribute specifies a URL to which FreeClimb makes a POST request when an answering machine or a fax machine is detected. This URL is required if the &#x60;ifMachine&#x60; flag is set to &#x60;redirect&#x60;. Otherwise, it should not be included. | [optional] 
**send_digits** | **String** | DTMF tones to play to the outdialed Call. This is typically used to dial a number and then dial an extension. | [optional] 
**status_callback_url** | **String** | When the outdialed Call leg terminates, FreeClimb sends a &#x60;callStatus&#x60; Webhook to the &#x60;statusCallbackUrl&#x60;. This is a notification only; any PerCL command returned is ignored. | [optional] 
**timeout** | **Integer** | Maximum time in seconds the &#x60;OutDial&#x60; command waits for the called party to answer the Call. When a timeout occurs, FreeClimb invokes the &#x60;callConnectUrl&#x60; Webhook to report that the out-dialed Call has ended with a status of &#x60;noAnswer&#x60;. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::OutDialAllOf.new(action_url: nil,
                                 call_connect_url: nil,
                                 calling_number: nil,
                                 destination: nil,
                                 if_machine: nil,
                                 if_machine_url: nil,
                                 send_digits: nil,
                                 status_callback_url: nil,
                                 timeout: nil)
```


