# Freeclimb::Redirect

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_url** | **String** | URL to request a new PerCL script to continue with the current Call&#39;s processing. When &#x60;Redirect&#x60; invokes the &#x60;actionUrl&#x60;, an &#x60;inbound&#x60; Webhook is sent. This request therefore looks identical to the initial request (made to the &#x60;voiceUrl&#x60; of the number that was called) for an inbound Call. | 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::Redirect.new(action_url: nil)
```


