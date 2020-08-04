# Freeclimb::SayAllOf

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**text** | **String** | The message to be played to the caller using TTS. The size of the string is limited to 4 KB (or 4,096 bytes). An empty string will cause the command to be skipped. | 
**language** | **String** | Language and (by implication) the locale to use. This implies the accent and pronunciations to be usde for the TTS. The complete list of valid values for the language attribute is shown below. | [optional] 
**loop** | **Integer** | Number of times the text is said. Specifying &#39;0&#39; causes the &#x60;Say&#x60; action to loop until the Call is hung up. | [optional] 
**conference_id** | **String** | D of the Conference the speech should be rendered to. If this is not specified, the speech is by default rendered to the Caller associated with the call leg that corresponds to the current PerCL execution context. The call leg associated with this command must be in the specified Conference or the command will return an error. | [optional] 
**privacy_mode** | **Boolean** | Parameter &#x60;privacyMode&#x60; will not log the &#x60;text&#x60; as required by PCI compliance. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::SayAllOf.new(text: nil,
                                 language: nil,
                                 loop: nil,
                                 conference_id: nil,
                                 privacy_mode: nil)
```


