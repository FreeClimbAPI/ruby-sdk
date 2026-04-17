# Freeclimb::AudioStream

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **location** | **String** | The gRPC server location that will receive the grpc stream as a uri and must be port 80 or 443. |  |
| **action_url** | **String** | A request is made to this URL when the gRPC session is concluded. The PerCL script returned in response to the actionUrl will be executed on the call. | [optional] |
| **content_type** | **String** | The type and sample rate of the audio being received over the channel must match the environmental sample rate. | [optional] |
| **meta_data** | **Array&lt;String&gt;** | An arbitrary array of strings passed through FC to the GRPC server can be used to pass state or other information about the call. | [optional] |
| **privacy_mode** | **Boolean** | Enables audio redaction with full call recording while gRPC session is running and blocks logging of any DTMFs received by FreeClimb. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::AudioStream.new(
  location: null,
  action_url: null,
  content_type: null,
  meta_data: null,
  privacy_mode: null
)
```

