# Freeclimb::UpdateCallRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**status** | **String** | Either &#x60;canceled&#x60; or &#x60;completed&#x60;.  Specifying &#x60;canceled&#x60; attempts to hang up calls that are queued without affecting calls already in progress. Specifying &#x60;completed&#x60; attempts to hang up a call already in progress. | 

## Code Sample

```ruby
require 'freeclimb'

instance = Freeclimb::UpdateCallRequest.new(status: nil)
```


