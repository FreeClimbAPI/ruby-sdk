# Freeclimb::CallEndedReason

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **BUSY** | **CallEndedReason** |  | Represented in Ruby as "busy" |
| **FAILED** | **CallEndedReason** |  | Represented in Ruby as "failed" |
| **NO_ANSWER** | **CallEndedReason** |  | Represented in Ruby as "noAnswer" |
| **CALL_CANCELED** | **CallEndedReason** |  | Represented in Ruby as "callCanceled" |
| **FAR_END_HANGUP** | **CallEndedReason** |  | Represented in Ruby as "farEndHangup" |
| **APP_HANGUP** | **CallEndedReason** |  | Represented in Ruby as "appHangup" |
| **APP_REJECT** | **CallEndedReason** |  | Represented in Ruby as "appReject" |
| **APP_NO_PERCL** | **CallEndedReason** |  | Represented in Ruby as "appNoPercl" |
| **APP_INVALID_PERCL** | **CallEndedReason** |  | Represented in Ruby as "appInvalidPercl" |
| **CONFERENCE_TERMINATED** | **CallEndedReason** |  | Represented in Ruby as "conferenceTerminated" |
| **CONFERENCE_EMPTIED** | **CallEndedReason** |  | Represented in Ruby as "conferenceEmptied" |
| **REMOVED_FROM_CONFERENCE** | **CallEndedReason** |  | Represented in Ruby as "removedFromConference" |
| **MACHINE_DETECTED** | **CallEndedReason** |  | Represented in Ruby as "machineDetected" |
| **WEBHOOK_FAILED** | **CallEndedReason** |  | Represented in Ruby as "webhookFailed" |
| **WEBHOOK_INVALID_RESPONSE** | **CallEndedReason** |  | Represented in Ruby as "webhookInvalidResponse" |
| **VOICE_DISABLED** | **CallEndedReason** |  | Represented in Ruby as "voiceDisabled" |
| **CONFIG_ERROR_NO_APPLICATION** | **CallEndedReason** |  | Represented in Ruby as "configErrorNoApplication" |
| **CONFIG_ERROR_NO_VOICE_URL** | **CallEndedReason** |  | Represented in Ruby as "configErrorNoVoiceUrl" |
| **MAX_REDIRECTS_ERROR** | **CallEndedReason** |  | Represented in Ruby as "maxRedirectsError" |
| **PERCL_PROCESSING_ERROR** | **CallEndedReason** |  | Represented in Ruby as "perclProcessingError" |
| **INTERNAL_ERROR** | **CallEndedReason** |  | Represented in Ruby as "internalError" |
| **GRPC_HANGUP** | **CallEndedReason** |  | Represented in Ruby as "grpcHangup" |
| **MAX_DURATION** | **CallEndedReason** |  | Represented in Ruby as "maxDuration" |

## Example

```ruby
require 'freeclimb'

instance = Freeclimb::CallEndedReason::[NAME OF ENUM]
```

