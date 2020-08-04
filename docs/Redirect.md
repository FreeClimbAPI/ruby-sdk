# Freeclimb::Redirect

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**action_url** | **String** | Reason for the rejection. This can be any string value. In general, applications should use a set of enumerated values that are predefined to cover all exit points of the call flows for the given application. | [optional] 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::Redirect.new(action_url: nil)
```


