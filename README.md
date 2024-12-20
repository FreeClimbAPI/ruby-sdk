# freeclimb

Freeclimb - the Ruby gem for the FreeClimb API

FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 4.9.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://www.freeclimb.com/support/](https://www.freeclimb.com/support/)

## Installation

Add this to the Gemfile:

    gem 'freeclimb', '~> 4.9.0'

and run from your terminal

    bundle install

### Install from Git

If the Ruby gem is hosted at a git repository: e.g. https://https://github.com/freeclimbapi/ruby-sdk, then add the following in the Gemfile:

    gem 'freeclimb', :git => 'https://https://github.com/freeclimbapi/ruby-sdk.git'

### Install from RubyGems

    gem install freeclimb
or

    bundle add freeclimb

### Install/Build locally
To build the Ruby code into a gem:

```shell
gem build freeclimb.gemspec
```

Then either install the gem locally:

```shell
gem install ./freeclimb-4.9.0.gem
```
(for development, run `gem install --dev ./freeclimb-4.9.0.gem` to install the development dependencies)

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'freeclimb'

# Setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

buy_incoming_number_request = Freeclimb::BuyIncomingNumberRequest.new({phone_number: 'phone_number_example'}) # BuyIncomingNumberRequest | Incoming Number transaction details


begin
  #Buy a Phone Number
  result = api_instance.buy_a_phone_number(buy_incoming_number_request)
  p result
rescue Freeclimb::ApiError => e
  puts "Exception when calling DefaultApi->buy_a_phone_number: #{e}"
end

```

## Documentation for PerCL

The Performance Command Language (PerCL) defines a set of instructions, written in JSON format, that express telephony actions to be performed in response to an event on the FreeClimb platform. FreeClimb communicates with the application server when events associated with the application occur, so the webserver can instruct FreeClimb how to handle such events using PerCL scripts.
PerCL commands are a part of the model schema and can be serialized into JSON like so:

```ruby
require 'freeclimb'

say = Freeclimb::Say.new(text: "Hello, World")
play = Freeclimb::Play.new(file: "Example File")
get_digits = Freeclimb::GetDigits.new(action_url: "Example Action URL", prompts: [say, play])
percl_script = Freeclimb::PerclScript.new(commands: [get_digits])
puts percl_script.to_json
```

## Documentation for API Endpoints

All URIs are relative to *https://www.freeclimb.com/apiserver*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*Freeclimb::DefaultApi* | [**buy_a_phone_number**](docs/DefaultApi.md#buy_a_phone_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers | Buy a Phone Number
*Freeclimb::DefaultApi* | [**create_a_conference**](docs/DefaultApi.md#create_a_conference) | **POST** /Accounts/{accountId}/Conferences | Create a Conference
*Freeclimb::DefaultApi* | [**create_a_queue**](docs/DefaultApi.md#create_a_queue) | **POST** /Accounts/{accountId}/Queues | Create a Queue
*Freeclimb::DefaultApi* | [**create_an_application**](docs/DefaultApi.md#create_an_application) | **POST** /Accounts/{accountId}/Applications | Create an application
*Freeclimb::DefaultApi* | [**create_knowledge_base_completion**](docs/DefaultApi.md#create_knowledge_base_completion) | **POST** /Accounts/{accountId}/KnowledgeBases/{knowledgeBaseId}/Completion | Query the knowledge base
*Freeclimb::DefaultApi* | [**delete_a_recording**](docs/DefaultApi.md#delete_a_recording) | **DELETE** /Accounts/{accountId}/Recordings/{recordingId} | Delete a Recording
*Freeclimb::DefaultApi* | [**delete_an_application**](docs/DefaultApi.md#delete_an_application) | **DELETE** /Accounts/{accountId}/Applications/{applicationId} | Delete an application
*Freeclimb::DefaultApi* | [**delete_an_incoming_number**](docs/DefaultApi.md#delete_an_incoming_number) | **DELETE** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Delete an Incoming Number
*Freeclimb::DefaultApi* | [**dequeue_a_member**](docs/DefaultApi.md#dequeue_a_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Dequeue a Member
*Freeclimb::DefaultApi* | [**dequeue_head_member**](docs/DefaultApi.md#dequeue_head_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Dequeue Head Member
*Freeclimb::DefaultApi* | [**download_a_recording_file**](docs/DefaultApi.md#download_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Download | Download a Recording File
*Freeclimb::DefaultApi* | [**filter_logs**](docs/DefaultApi.md#filter_logs) | **POST** /Accounts/{accountId}/Logs | Filter Logs
*Freeclimb::DefaultApi* | [**get_a_call**](docs/DefaultApi.md#get_a_call) | **GET** /Accounts/{accountId}/Calls/{callId} | Get a Call
*Freeclimb::DefaultApi* | [**get_a_conference**](docs/DefaultApi.md#get_a_conference) | **GET** /Accounts/{accountId}/Conferences/{conferenceId} | Get a Conference
*Freeclimb::DefaultApi* | [**get_a_member**](docs/DefaultApi.md#get_a_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Get a Member
*Freeclimb::DefaultApi* | [**get_a_participant**](docs/DefaultApi.md#get_a_participant) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Get a Participant
*Freeclimb::DefaultApi* | [**get_a_queue**](docs/DefaultApi.md#get_a_queue) | **GET** /Accounts/{accountId}/Queues/{queueId} | Get a Queue
*Freeclimb::DefaultApi* | [**get_a_recording**](docs/DefaultApi.md#get_a_recording) | **GET** /Accounts/{accountId}/Recordings/{recordingId} | Get a Recording
*Freeclimb::DefaultApi* | [**get_an_account**](docs/DefaultApi.md#get_an_account) | **GET** /Accounts/{accountId} | Get an Account
*Freeclimb::DefaultApi* | [**get_an_application**](docs/DefaultApi.md#get_an_application) | **GET** /Accounts/{accountId}/Applications/{applicationId} | Get an Application
*Freeclimb::DefaultApi* | [**get_an_incoming_number**](docs/DefaultApi.md#get_an_incoming_number) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Get an Incoming Number
*Freeclimb::DefaultApi* | [**get_an_sms_message**](docs/DefaultApi.md#get_an_sms_message) | **GET** /Accounts/{accountId}/Messages/{messageId} | Get an SMS Message
*Freeclimb::DefaultApi* | [**get_head_member**](docs/DefaultApi.md#get_head_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Get Head Member
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_brand**](docs/DefaultApi.md#get_ten_dlc_sms_brand) | **GET** /Accounts/{accountId}/Messages/10DLC/Brands/{brandId} | Get a 10DLC SMS Brand
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_brands**](docs/DefaultApi.md#get_ten_dlc_sms_brands) | **GET** /Accounts/{accountId}/Messages/10DLC/Brands | Get list of SMS 10DLC Brands
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_campaign**](docs/DefaultApi.md#get_ten_dlc_sms_campaign) | **GET** /Accounts/{accountId}/Messages/10DLC/Campaigns/{campaignId} | Get a 10DLC SMS Campaign
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_campaigns**](docs/DefaultApi.md#get_ten_dlc_sms_campaigns) | **GET** /Accounts/{accountId}/Messages/10DLC/Campaigns | Get list of SMS 10DLC Campaigns
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_partner_campaign**](docs/DefaultApi.md#get_ten_dlc_sms_partner_campaign) | **GET** /Accounts/{accountId}/Messages/10DLC/PartnerCampaigns/{campaignId} | Get a 10DLC SMS Partner Campaign
*Freeclimb::DefaultApi* | [**get_ten_dlc_sms_partner_campaigns**](docs/DefaultApi.md#get_ten_dlc_sms_partner_campaigns) | **GET** /Accounts/{accountId}/Messages/10DLC/PartnerCampaigns | Get list of SMS 10DLC Partner Campaigns
*Freeclimb::DefaultApi* | [**get_toll_free_sms_campaign**](docs/DefaultApi.md#get_toll_free_sms_campaign) | **GET** /Accounts/{accountId}/Messages/TollFree/Campaigns/{campaignId} | Get a TollFree SMS Campaign
*Freeclimb::DefaultApi* | [**get_toll_free_sms_campaigns**](docs/DefaultApi.md#get_toll_free_sms_campaigns) | **GET** /Accounts/{accountId}/Messages/TollFree/Campaigns | Get list of TollFree Campaigns
*Freeclimb::DefaultApi* | [**list_active_queues**](docs/DefaultApi.md#list_active_queues) | **GET** /Accounts/{accountId}/Queues | List Active Queues
*Freeclimb::DefaultApi* | [**list_all_account_logs**](docs/DefaultApi.md#list_all_account_logs) | **GET** /Accounts/{accountId}/Logs | List All Account Logs
*Freeclimb::DefaultApi* | [**list_applications**](docs/DefaultApi.md#list_applications) | **GET** /Accounts/{accountId}/Applications | List applications
*Freeclimb::DefaultApi* | [**list_available_numbers**](docs/DefaultApi.md#list_available_numbers) | **GET** /AvailablePhoneNumbers | List available numbers
*Freeclimb::DefaultApi* | [**list_call_logs**](docs/DefaultApi.md#list_call_logs) | **GET** /Accounts/{accountId}/Calls/{callId}/Logs | List Call Logs
*Freeclimb::DefaultApi* | [**list_call_recordings**](docs/DefaultApi.md#list_call_recordings) | **GET** /Accounts/{accountId}/Calls/{callId}/Recordings | List Call Recordings
*Freeclimb::DefaultApi* | [**list_calls**](docs/DefaultApi.md#list_calls) | **GET** /Accounts/{accountId}/Calls | List Calls
*Freeclimb::DefaultApi* | [**list_conference_recordings**](docs/DefaultApi.md#list_conference_recordings) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Recordings | List Conference Recordings
*Freeclimb::DefaultApi* | [**list_conferences**](docs/DefaultApi.md#list_conferences) | **GET** /Accounts/{accountId}/Conferences | List Conferences
*Freeclimb::DefaultApi* | [**list_incoming_numbers**](docs/DefaultApi.md#list_incoming_numbers) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers | List Incoming Numbers
*Freeclimb::DefaultApi* | [**list_members**](docs/DefaultApi.md#list_members) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members | List Members
*Freeclimb::DefaultApi* | [**list_participants**](docs/DefaultApi.md#list_participants) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants | List Participants
*Freeclimb::DefaultApi* | [**list_recordings**](docs/DefaultApi.md#list_recordings) | **GET** /Accounts/{accountId}/Recordings | List Recordings
*Freeclimb::DefaultApi* | [**list_sms_messages**](docs/DefaultApi.md#list_sms_messages) | **GET** /Accounts/{accountId}/Messages | List SMS Messages
*Freeclimb::DefaultApi* | [**make_a_call**](docs/DefaultApi.md#make_a_call) | **POST** /Accounts/{accountId}/Calls | Make a Call
*Freeclimb::DefaultApi* | [**make_a_webrtc_jwt**](docs/DefaultApi.md#make_a_webrtc_jwt) | **POST** /Accounts/{accountId}/Calls/WebRTC/Token | Make a JWT for WebRTC calling
*Freeclimb::DefaultApi* | [**remove_a_participant**](docs/DefaultApi.md#remove_a_participant) | **DELETE** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Remove a Participant
*Freeclimb::DefaultApi* | [**send_an_sms_message**](docs/DefaultApi.md#send_an_sms_message) | **POST** /Accounts/{accountId}/Messages | Send an SMS Message
*Freeclimb::DefaultApi* | [**stream_a_recording_file**](docs/DefaultApi.md#stream_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Stream | Stream a Recording File
*Freeclimb::DefaultApi* | [**update_a_conference**](docs/DefaultApi.md#update_a_conference) | **POST** /Accounts/{accountId}/Conferences/{conferenceId} | Update a Conference
*Freeclimb::DefaultApi* | [**update_a_live_call**](docs/DefaultApi.md#update_a_live_call) | **POST** /Accounts/{accountId}/Calls/{callId} | Update a Live Call
*Freeclimb::DefaultApi* | [**update_a_participant**](docs/DefaultApi.md#update_a_participant) | **POST** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Update a Participant
*Freeclimb::DefaultApi* | [**update_a_queue**](docs/DefaultApi.md#update_a_queue) | **POST** /Accounts/{accountId}/Queues/{queueId} | Update a Queue
*Freeclimb::DefaultApi* | [**update_an_account**](docs/DefaultApi.md#update_an_account) | **POST** /Accounts/{accountId} | Manage an account
*Freeclimb::DefaultApi* | [**update_an_application**](docs/DefaultApi.md#update_an_application) | **POST** /Accounts/{accountId}/Applications/{applicationId} | Update an application
*Freeclimb::DefaultApi* | [**update_an_incoming_number**](docs/DefaultApi.md#update_an_incoming_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Update an Incoming Number
*FreeClimb::DefaultApi* | [**get_next_page**](docs/DefaultApi.md#get_next_page) | **GET** | Get next page of paginated resource 

## Documentation for Models

 - [Freeclimb::AccountRequest](docs/AccountRequest.md)
 - [Freeclimb::AccountResult](docs/AccountResult.md)
 - [Freeclimb::AccountResultAllOf](docs/AccountResultAllOf.md)
 - [Freeclimb::AccountStatus](docs/AccountStatus.md)
 - [Freeclimb::AccountType](docs/AccountType.md)
 - [Freeclimb::AddToConference](docs/AddToConference.md)
 - [Freeclimb::AddToConferenceAllOf](docs/AddToConferenceAllOf.md)
 - [Freeclimb::AnsweredBy](docs/AnsweredBy.md)
 - [Freeclimb::ApplicationList](docs/ApplicationList.md)
 - [Freeclimb::ApplicationListAllOf](docs/ApplicationListAllOf.md)
 - [Freeclimb::ApplicationRequest](docs/ApplicationRequest.md)
 - [Freeclimb::ApplicationResult](docs/ApplicationResult.md)
 - [Freeclimb::ApplicationResultAllOf](docs/ApplicationResultAllOf.md)
 - [Freeclimb::AvailableNumber](docs/AvailableNumber.md)
 - [Freeclimb::AvailableNumberList](docs/AvailableNumberList.md)
 - [Freeclimb::AvailableNumberListAllOf](docs/AvailableNumberListAllOf.md)
 - [Freeclimb::BuyIncomingNumberRequest](docs/BuyIncomingNumberRequest.md)
 - [Freeclimb::CallDirection](docs/CallDirection.md)
 - [Freeclimb::CallList](docs/CallList.md)
 - [Freeclimb::CallListAllOf](docs/CallListAllOf.md)
 - [Freeclimb::CallResult](docs/CallResult.md)
 - [Freeclimb::CallResultAllOf](docs/CallResultAllOf.md)
 - [Freeclimb::CallStatus](docs/CallStatus.md)
 - [Freeclimb::Capabilities](docs/Capabilities.md)
 - [Freeclimb::CompletionRequest](docs/CompletionRequest.md)
 - [Freeclimb::CompletionResult](docs/CompletionResult.md)
 - [Freeclimb::ConferenceList](docs/ConferenceList.md)
 - [Freeclimb::ConferenceListAllOf](docs/ConferenceListAllOf.md)
 - [Freeclimb::ConferenceParticipantList](docs/ConferenceParticipantList.md)
 - [Freeclimb::ConferenceParticipantListAllOf](docs/ConferenceParticipantListAllOf.md)
 - [Freeclimb::ConferenceParticipantResult](docs/ConferenceParticipantResult.md)
 - [Freeclimb::ConferenceParticipantResultAllOf](docs/ConferenceParticipantResultAllOf.md)
 - [Freeclimb::ConferenceResult](docs/ConferenceResult.md)
 - [Freeclimb::ConferenceResultAllOf](docs/ConferenceResultAllOf.md)
 - [Freeclimb::ConferenceStatus](docs/ConferenceStatus.md)
 - [Freeclimb::CreateConference](docs/CreateConference.md)
 - [Freeclimb::CreateConferenceAllOf](docs/CreateConferenceAllOf.md)
 - [Freeclimb::CreateConferenceRequest](docs/CreateConferenceRequest.md)
 - [Freeclimb::CreateWebRTCToken](docs/CreateWebRTCToken.md)
 - [Freeclimb::Dequeue](docs/Dequeue.md)
 - [Freeclimb::Enqueue](docs/Enqueue.md)
 - [Freeclimb::EnqueueAllOf](docs/EnqueueAllOf.md)
 - [Freeclimb::FilterLogsRequest](docs/FilterLogsRequest.md)
 - [Freeclimb::GetDigits](docs/GetDigits.md)
 - [Freeclimb::GetDigitsAllOf](docs/GetDigitsAllOf.md)
 - [Freeclimb::GetSpeech](docs/GetSpeech.md)
 - [Freeclimb::GetSpeechAllOf](docs/GetSpeechAllOf.md)
 - [Freeclimb::GetSpeechReason](docs/GetSpeechReason.md)
 - [Freeclimb::GrammarFileBuiltIn](docs/GrammarFileBuiltIn.md)
 - [Freeclimb::GrammarType](docs/GrammarType.md)
 - [Freeclimb::Hangup](docs/Hangup.md)
 - [Freeclimb::HangupAllOf](docs/HangupAllOf.md)
 - [Freeclimb::IfMachine](docs/IfMachine.md)
 - [Freeclimb::IncomingNumberList](docs/IncomingNumberList.md)
 - [Freeclimb::IncomingNumberListAllOf](docs/IncomingNumberListAllOf.md)
 - [Freeclimb::IncomingNumberRequest](docs/IncomingNumberRequest.md)
 - [Freeclimb::IncomingNumberResult](docs/IncomingNumberResult.md)
 - [Freeclimb::IncomingNumberResultAllOf](docs/IncomingNumberResultAllOf.md)
 - [Freeclimb::Language](docs/Language.md)
 - [Freeclimb::LogLevel](docs/LogLevel.md)
 - [Freeclimb::LogList](docs/LogList.md)
 - [Freeclimb::LogListAllOf](docs/LogListAllOf.md)
 - [Freeclimb::LogResult](docs/LogResult.md)
 - [Freeclimb::MachineType](docs/MachineType.md)
 - [Freeclimb::MakeCallRequest](docs/MakeCallRequest.md)
 - [Freeclimb::MessageDirection](docs/MessageDirection.md)
 - [Freeclimb::MessageRequest](docs/MessageRequest.md)
 - [Freeclimb::MessageRequestAllOf](docs/MessageRequestAllOf.md)
 - [Freeclimb::MessageResult](docs/MessageResult.md)
 - [Freeclimb::MessageResultAllOf](docs/MessageResultAllOf.md)
 - [Freeclimb::MessageStatus](docs/MessageStatus.md)
 - [Freeclimb::MessagesList](docs/MessagesList.md)
 - [Freeclimb::MessagesListAllOf](docs/MessagesListAllOf.md)
 - [Freeclimb::MutableResourceModel](docs/MutableResourceModel.md)
 - [Freeclimb::OutDial](docs/OutDial.md)
 - [Freeclimb::OutDialAllOf](docs/OutDialAllOf.md)
 - [Freeclimb::PaginationModel](docs/PaginationModel.md)
 - [Freeclimb::Park](docs/Park.md)
 - [Freeclimb::ParkAllOf](docs/ParkAllOf.md)
 - [Freeclimb::Pause](docs/Pause.md)
 - [Freeclimb::PauseAllOf](docs/PauseAllOf.md)
 - [Freeclimb::PerclCommand](docs/PerclCommand.md)
 - [Freeclimb::PerclScript](docs/PerclScript.md)
 - [Freeclimb::Play](docs/Play.md)
 - [Freeclimb::PlayAllOf](docs/PlayAllOf.md)
 - [Freeclimb::PlayBeep](docs/PlayBeep.md)
 - [Freeclimb::PlayEarlyMedia](docs/PlayEarlyMedia.md)
 - [Freeclimb::PlayEarlyMediaAllOf](docs/PlayEarlyMediaAllOf.md)
 - [Freeclimb::QueueList](docs/QueueList.md)
 - [Freeclimb::QueueListAllOf](docs/QueueListAllOf.md)
 - [Freeclimb::QueueMember](docs/QueueMember.md)
 - [Freeclimb::QueueMemberList](docs/QueueMemberList.md)
 - [Freeclimb::QueueMemberListAllOf](docs/QueueMemberListAllOf.md)
 - [Freeclimb::QueueRequest](docs/QueueRequest.md)
 - [Freeclimb::QueueResult](docs/QueueResult.md)
 - [Freeclimb::QueueResultAllOf](docs/QueueResultAllOf.md)
 - [Freeclimb::QueueResultStatus](docs/QueueResultStatus.md)
 - [Freeclimb::RecordUtterance](docs/RecordUtterance.md)
 - [Freeclimb::RecordUtteranceAllOf](docs/RecordUtteranceAllOf.md)
 - [Freeclimb::RecordUtteranceTermReason](docs/RecordUtteranceTermReason.md)
 - [Freeclimb::RecordingList](docs/RecordingList.md)
 - [Freeclimb::RecordingListAllOf](docs/RecordingListAllOf.md)
 - [Freeclimb::RecordingResult](docs/RecordingResult.md)
 - [Freeclimb::RecordingResultAllOf](docs/RecordingResultAllOf.md)
 - [Freeclimb::Redirect](docs/Redirect.md)
 - [Freeclimb::RedirectAllOf](docs/RedirectAllOf.md)
 - [Freeclimb::Reject](docs/Reject.md)
 - [Freeclimb::RejectAllOf](docs/RejectAllOf.md)
 - [Freeclimb::RemoveFromConference](docs/RemoveFromConference.md)
 - [Freeclimb::RequestType](docs/RequestType.md)
 - [Freeclimb::SMSTenDLCBrand](docs/SMSTenDLCBrand.md)
 - [Freeclimb::SMSTenDLCBrandsListResult](docs/SMSTenDLCBrandsListResult.md)
 - [Freeclimb::SMSTenDLCBrandsListResultAllOf](docs/SMSTenDLCBrandsListResultAllOf.md)
 - [Freeclimb::SMSTenDLCCampaign](docs/SMSTenDLCCampaign.md)
 - [Freeclimb::SMSTenDLCCampaignsListResult](docs/SMSTenDLCCampaignsListResult.md)
 - [Freeclimb::SMSTenDLCCampaignsListResultAllOf](docs/SMSTenDLCCampaignsListResultAllOf.md)
 - [Freeclimb::SMSTenDLCPartnerCampaign](docs/SMSTenDLCPartnerCampaign.md)
 - [Freeclimb::SMSTenDLCPartnerCampaignBrand](docs/SMSTenDLCPartnerCampaignBrand.md)
 - [Freeclimb::SMSTenDLCPartnerCampaignsListResult](docs/SMSTenDLCPartnerCampaignsListResult.md)
 - [Freeclimb::SMSTenDLCPartnerCampaignsListResultAllOf](docs/SMSTenDLCPartnerCampaignsListResultAllOf.md)
 - [Freeclimb::SMSTollFreeCampaign](docs/SMSTollFreeCampaign.md)
 - [Freeclimb::SMSTollFreeCampaignsListResult](docs/SMSTollFreeCampaignsListResult.md)
 - [Freeclimb::SMSTollFreeCampaignsListResultAllOf](docs/SMSTollFreeCampaignsListResultAllOf.md)
 - [Freeclimb::Say](docs/Say.md)
 - [Freeclimb::SayAllOf](docs/SayAllOf.md)
 - [Freeclimb::SendDigits](docs/SendDigits.md)
 - [Freeclimb::SendDigitsAllOf](docs/SendDigitsAllOf.md)
 - [Freeclimb::SetDTMFPassThrough](docs/SetDTMFPassThrough.md)
 - [Freeclimb::SetDTMFPassThroughAllOf](docs/SetDTMFPassThroughAllOf.md)
 - [Freeclimb::SetListen](docs/SetListen.md)
 - [Freeclimb::SetListenAllOf](docs/SetListenAllOf.md)
 - [Freeclimb::SetTalk](docs/SetTalk.md)
 - [Freeclimb::SetTalkAllOf](docs/SetTalkAllOf.md)
 - [Freeclimb::Sms](docs/Sms.md)
 - [Freeclimb::SmsAllOf](docs/SmsAllOf.md)
 - [Freeclimb::StartRecordCall](docs/StartRecordCall.md)
 - [Freeclimb::TFN](docs/TFN.md)
 - [Freeclimb::TerminateConference](docs/TerminateConference.md)
 - [Freeclimb::TranscribeUtterance](docs/TranscribeUtterance.md)
 - [Freeclimb::TranscribeUtteranceAllOf](docs/TranscribeUtteranceAllOf.md)
 - [Freeclimb::TranscribeUtteranceAllOfRecord](docs/TranscribeUtteranceAllOfRecord.md)
 - [Freeclimb::Unpark](docs/Unpark.md)
 - [Freeclimb::UpdateCallRequest](docs/UpdateCallRequest.md)
 - [Freeclimb::UpdateCallRequestStatus](docs/UpdateCallRequestStatus.md)
 - [Freeclimb::UpdateConferenceParticipantRequest](docs/UpdateConferenceParticipantRequest.md)
 - [Freeclimb::UpdateConferenceRequest](docs/UpdateConferenceRequest.md)
 - [Freeclimb::UpdateConferenceRequestStatus](docs/UpdateConferenceRequestStatus.md)


## Documentation for Authorization


### fc

- **Type**: HTTP basic authentication


<a name="documentation-for-verify-request-signature"></a>

## Documentation for verifying request signature

- To verify the signature request, we will need to use the verifySignatureRequest method within the Request Verifier class

  Freeclimb::RequestVerifier.verify_request_signature(requestBody, requestHeader, signingSecret, tolerance)

  This is a method that you can call directly from the request verifier class, it will throw exceptions depending on whether all parts of the request signature is valid otherwise it will throw a specific error message depending on which request signature part is causing issues

  This method requires a requestBody of type string, a requestHeader of type string, a signingSecret of type string, and a tolerance value of type int

  Example code down below

  ```ruby
  class RequestVerifier
    def verify_request_signature_example()
        request_header = "t=1679944186,v1=c3957749baf61df4b1506802579cc69a74c77a1ae21447b930e5a704f9ec4120,v1=1ba18712726898fbbe48cd862dd096a709f7ad761a5bab14bda9ac24d963a6a8"
        signing_secret = "sigsec_ead6d3b6904196c60835d039e91b3341c77a7793"
        tolerance = (5 * 60)
        request_body =  "{\"accountId\":\"AC1334ffb694cd8d969f51cddf5f7c9b478546d50c\",\"callId\":\"CAccb0b00506553cda09b51c5477f672a49e0b2213\",\"callStatus\":\"ringing\",\"conferenceId\":null,\"direction\":\"inbound\",\"from\":\"+13121000109\",\"parentCallId\":null,\"queueId\":null,\"requestType\":\"inboundCall\",\"to\":\"+13121000096\"}"
        Freeclimb::RequestVerifier.verify_request_signature(request_body, request_header, signing_secret, tolerance)
  ```


## Getting Help

If you are experiencing difficulties, [contact support](https://freeclimb.com/support).