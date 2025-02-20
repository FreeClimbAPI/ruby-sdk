# Freeclimb::CreateConferenceRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **_alias** | **String** | A description for this Conference. Maximum 64 characters. | [optional] |
| **play_beep** | [**PlayBeep**](PlayBeep.md) |  | [optional] |
| **record** | **Boolean** | Setting to &#x60;true&#x60; records the entire Conference. | [optional] |
| **wait_url** | **String** | If specified, a URL for the audio file that provides custom hold music for the Conference when it is in the populated state. Otherwise, FreeClimb uses a system default audio file. This is always fetched using HTTP GET and is fetched just once &amp;mdash; when the Conference is created. | [optional] |
| **status_callback_url** | **String** | This URL is invoked when the status of the Conference changes. For more information, see **statusCallbackUrl** (below). |  |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::CreateConferenceRequest.new(
  _alias: null,
  play_beep: null,
  record: null,
  wait_url: null,
  status_callback_url: null
)
```

