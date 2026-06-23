# Freeclimb::OutDial

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action_url** | **String** | URL to which FreeClimb sends an HTTP POST request.  |  |
| **call_connect_url** | **String** | URL to which FreeClimb makes an HTTP POST request informing the result of the OutDial. |  |
| **calling_number** | **String** | he caller ID to show to the called party when FreeClimb calls. This can be one of the following: The To or From number provided in the first Webhook to your webserver. Any phone number you have purchased from FreeClimb. |  |
| **destination** | **String** | E.164 representation of the phone number to Call.  |  |
| **if_machine** | [**IfMachine**](IfMachine.md) |  | [optional] |
| **if_machine_url** | **String** | When the &#x60;ifMachine&#x60; flag is set to &#x60;redirect&#x60;, this attribute specifies a URL to which FreeClimb makes a POST request when an answering machine or a fax machine is detected. This URL is required if the &#x60;ifMachine&#x60; flag is set to &#x60;redirect&#x60;. Otherwise, it should not be included. | [optional] |
| **send_digits** | **String** | DTMF tones to play to the outdialed Call. This is typically used to dial a number and then dial an extension. | [optional] |
| **status_callback_url** | **String** | When the outdialed Call leg terminates, FreeClimb sends a &#x60;callStatus&#x60; Webhook to the &#x60;statusCallbackUrl&#x60;. This is a notification only; any PerCL command returned is ignored. | [optional] |
| **timeout** | **Integer** | Maximum time in seconds the &#x60;OutDial&#x60; command waits for the called party to answer the Call. When a timeout occurs, FreeClimb invokes the &#x60;callConnectUrl&#x60; Webhook to report that the out-dialed Call has ended with a status of &#x60;noAnswer&#x60;. | [optional] |
| **privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] |

## Example

```ruby
require 'freeclimb'
require 'json'

json = '{
  "command": "OutDial",
  "actionUrl": "https://www.example.com",
  "callConnectUrl": "https://www.example.com",
  "callingNumber": "string",
  "destination": "string",
  "ifMachine": "redirect",
  "ifMachineUrl": "https://www.example.com",
  "sendDigits": "string",
  "statusCallbackUrl": "https://www.example.com",
  "timeout": 0,
  "privacyMode": false
}'

# create an instance of OutDial from a JSON string
instance = Freeclimb::OutDial.build_from_hash(JSON.parse(json))
```

