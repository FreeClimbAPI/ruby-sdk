# Freeclimb::Park

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wait_url** | **String** | Specifies a URL pointing to a PerCL script containing actions to be executed while the caller is Parked. Once the script returned by the waitUrl runs out of commands to execute, FreeClimb will re-request the waitUrl and start over, essentially looping the script requests indefinitely. |  |
| **action_url** | **String** | A request is made to this URL when the Call is resumed, which can occur if the Call is resumed via the Unpark command, the REST API (POST to Call resource), or the caller hangs up. The PerCL script returned in response to the actionUrl will be executed on the resumed call. |  |
| **notification_url** | **String** | URL to be invoked when the Call is parked. The request to the URL contains the standard request parameters. | [optional] |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::Park.new(
  wait_url: null,
  action_url: null,
  notification_url: null
)
```

