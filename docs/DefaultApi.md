# Freeclimb::DefaultApi

All URIs are relative to *https://www.freeclimb.com/apiserver*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**buy_a_phone_number**](DefaultApi.md#buy_a_phone_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers | Buy a Phone Number |
| [**create_a_conference**](DefaultApi.md#create_a_conference) | **POST** /Accounts/{accountId}/Conferences | Create a Conference |
| [**create_a_queue**](DefaultApi.md#create_a_queue) | **POST** /Accounts/{accountId}/Queues | Create a Queue |
| [**create_an_application**](DefaultApi.md#create_an_application) | **POST** /Accounts/{accountId}/Applications | Create an application |
| [**delete_a_recording**](DefaultApi.md#delete_a_recording) | **DELETE** /Accounts/{accountId}/Recordings/{recordingId} | Delete a Recording |
| [**delete_an_application**](DefaultApi.md#delete_an_application) | **DELETE** /Accounts/{accountId}/Applications/{applicationId} | Delete an application |
| [**delete_an_incoming_number**](DefaultApi.md#delete_an_incoming_number) | **DELETE** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Delete an Incoming Number |
| [**dequeue_a_member**](DefaultApi.md#dequeue_a_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Dequeue a Member |
| [**dequeue_head_member**](DefaultApi.md#dequeue_head_member) | **POST** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Dequeue Head Member |
| [**download_a_recording_file**](DefaultApi.md#download_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Download | Download a Recording File |
| [**filter_logs**](DefaultApi.md#filter_logs) | **POST** /Accounts/{accountId}/Logs | Filter Logs |
| [**get_a_call**](DefaultApi.md#get_a_call) | **GET** /Accounts/{accountId}/Calls/{callId} | Get a Call |
| [**get_a_conference**](DefaultApi.md#get_a_conference) | **GET** /Accounts/{accountId}/Conferences/{conferenceId} | Get a Conference |
| [**get_a_member**](DefaultApi.md#get_a_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/{callId} | Get a Member |
| [**get_a_participant**](DefaultApi.md#get_a_participant) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Get a Participant |
| [**get_a_queue**](DefaultApi.md#get_a_queue) | **GET** /Accounts/{accountId}/Queues/{queueId} | Get a Queue |
| [**get_a_recording**](DefaultApi.md#get_a_recording) | **GET** /Accounts/{accountId}/Recordings/{recordingId} | Get a Recording |
| [**get_an_account**](DefaultApi.md#get_an_account) | **GET** /Accounts/{accountId} | Get an Account |
| [**get_an_application**](DefaultApi.md#get_an_application) | **GET** /Accounts/{accountId}/Applications/{applicationId} | Get an Application |
| [**get_an_incoming_number**](DefaultApi.md#get_an_incoming_number) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Get an Incoming Number |
| [**get_an_sms_message**](DefaultApi.md#get_an_sms_message) | **GET** /Accounts/{accountId}/Messages/{messageId} | Get an SMS Message |
| [**get_head_member**](DefaultApi.md#get_head_member) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members/Front | Get Head Member |
| [**list_active_queues**](DefaultApi.md#list_active_queues) | **GET** /Accounts/{accountId}/Queues | List Active Queues |
| [**list_all_account_logs**](DefaultApi.md#list_all_account_logs) | **GET** /Accounts/{accountId}/Logs | List All Account Logs |
| [**list_applications**](DefaultApi.md#list_applications) | **GET** /Accounts/{accountId}/Applications | List applications |
| [**list_available_numbers**](DefaultApi.md#list_available_numbers) | **GET** /AvailablePhoneNumbers | List available numbers |
| [**list_call_logs**](DefaultApi.md#list_call_logs) | **GET** /Accounts/{accountId}/Calls/{callId}/Logs | List Call Logs |
| [**list_call_recordings**](DefaultApi.md#list_call_recordings) | **GET** /Accounts/{accountId}/Calls/{callId}/Recordings | List Call Recordings |
| [**list_calls**](DefaultApi.md#list_calls) | **GET** /Accounts/{accountId}/Calls | List Calls |
| [**list_conferences**](DefaultApi.md#list_conferences) | **GET** /Accounts/{accountId}/Conferences | List Conferences |
| [**list_incoming_numbers**](DefaultApi.md#list_incoming_numbers) | **GET** /Accounts/{accountId}/IncomingPhoneNumbers | List Incoming Numbers |
| [**list_members**](DefaultApi.md#list_members) | **GET** /Accounts/{accountId}/Queues/{queueId}/Members | List Members |
| [**list_participants**](DefaultApi.md#list_participants) | **GET** /Accounts/{accountId}/Conferences/{conferenceId}/Participants | List Participants |
| [**list_recordings**](DefaultApi.md#list_recordings) | **GET** /Accounts/{accountId}/Recordings | List Recordings |
| [**list_sms_messages**](DefaultApi.md#list_sms_messages) | **GET** /Accounts/{accountId}/Messages | List SMS Messages |
| [**make_a_call**](DefaultApi.md#make_a_call) | **POST** /Accounts/{accountId}/Calls | Make a Call |
| [**remove_a_participant**](DefaultApi.md#remove_a_participant) | **DELETE** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Remove a Participant |
| [**send_an_sms_message**](DefaultApi.md#send_an_sms_message) | **POST** /Accounts/{accountId}/Messages | Send an SMS Message |
| [**stream_a_recording_file**](DefaultApi.md#stream_a_recording_file) | **GET** /Accounts/{accountId}/Recordings/{recordingId}/Stream | Stream a Recording File |
| [**update_a_conference**](DefaultApi.md#update_a_conference) | **POST** /Accounts/{accountId}/Conferences/{conferenceId} | Update a Conference |
| [**update_a_live_call**](DefaultApi.md#update_a_live_call) | **POST** /Accounts/{accountId}/Calls/{callId} | Update a Live Call |
| [**update_a_participant**](DefaultApi.md#update_a_participant) | **POST** /Accounts/{accountId}/Conferences/{conferenceId}/Participants/{callId} | Update a Participant |
| [**update_a_queue**](DefaultApi.md#update_a_queue) | **POST** /Accounts/{accountId}/Queues/{queueId} | Update a Queue |
| [**update_an_account**](DefaultApi.md#update_an_account) | **POST** /Accounts/{accountId} | Manage an account |
| [**update_an_application**](DefaultApi.md#update_an_application) | **POST** /Accounts/{accountId}/Applications/{applicationId} | Update an application |
| [**update_an_incoming_number**](DefaultApi.md#update_an_incoming_number) | **POST** /Accounts/{accountId}/IncomingPhoneNumbers/{phoneNumberId} | Update an Incoming Number |


## buy_a_phone_number

Buy a Phone Number

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

buy_incoming_number_request = Freeclimb::BuyIncomingNumberRequest.new({phone_number: 'phone_number_example'}) # BuyIncomingNumberRequest | Incoming Number transaction details


begin

  # Buy a Phone Number
  result = api_instance.buy_a_phone_number(buy_incoming_number_request)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->buy_a_phone_number: #{e}"
end
```

#### Using the buy_a_phone_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingNumberResult>, Integer, Hash)> buy_a_phone_number_with_http_info(account_id, buy_incoming_number_request)

```ruby
begin
  # Buy a Phone Number
  data, status_code, headers = api_instance.buy_a_phone_number_with_http_info(buy_incoming_number_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingNumberResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->buy_a_phone_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **buy_incoming_number_request** | [**BuyIncomingNumberRequest**](BuyIncomingNumberRequest.md) | Incoming Number transaction details |  |


### Return type

[**IncomingNumberResult**](IncomingNumberResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_a_conference

Create a Conference

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  create_conference_request: Freeclimb::CreateConferenceRequest.new # CreateConferenceRequest | Conference to create
}

begin

  # Create a Conference
  result = api_instance.create_a_conference(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_a_conference: #{e}"
end
```

#### Using the create_a_conference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceResult>, Integer, Hash)> create_a_conference_with_http_info(account_id, opts)

```ruby
begin
  # Create a Conference
  data, status_code, headers = api_instance.create_a_conference_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_a_conference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **create_conference_request** | [**CreateConferenceRequest**](CreateConferenceRequest.md) | Conference to create | [optional] |


### Return type

[**ConferenceResult**](ConferenceResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_a_queue

Create a Queue

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  queue_request: Freeclimb::QueueRequest.new # QueueRequest | Queue details used to create a queue
}

begin

  # Create a Queue
  result = api_instance.create_a_queue(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_a_queue: #{e}"
end
```

#### Using the create_a_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueResult>, Integer, Hash)> create_a_queue_with_http_info(account_id, opts)

```ruby
begin
  # Create a Queue
  data, status_code, headers = api_instance.create_a_queue_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_a_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_request** | [**QueueRequest**](QueueRequest.md) | Queue details used to create a queue | [optional] |


### Return type

[**QueueResult**](QueueResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## create_an_application

Create an application

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  application_request: Freeclimb::ApplicationRequest.new # ApplicationRequest | Application Details
}

begin

  # Create an application
  result = api_instance.create_an_application(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_an_application: #{e}"
end
```

#### Using the create_an_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResult>, Integer, Hash)> create_an_application_with_http_info(account_id, opts)

```ruby
begin
  # Create an application
  data, status_code, headers = api_instance.create_an_application_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->create_an_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **application_request** | [**ApplicationRequest**](ApplicationRequest.md) | Application Details | [optional] |


### Return type

[**ApplicationResult**](ApplicationResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## delete_a_recording

Delete a Recording

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

recording_id = 'recording_id_example' # String | String that uniquely identifies this recording resource.


begin

  # Delete a Recording
  api_instance.delete_a_recording(recording_id)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_a_recording: #{e}"
end
```

#### Using the delete_a_recording_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_a_recording_with_http_info(account_id, recording_id)

```ruby
begin
  # Delete a Recording
  data, status_code, headers = api_instance.delete_a_recording_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_a_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **recording_id** | **String** | String that uniquely identifies this recording resource. |  |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_an_application

Delete an application

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

application_id = 'application_id_example' # String | String that uniquely identifies this application resource.


begin

  # Delete an application
  api_instance.delete_an_application(application_id)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_an_application: #{e}"
end
```

#### Using the delete_an_application_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_an_application_with_http_info(account_id, application_id)

```ruby
begin
  # Delete an application
  data, status_code, headers = api_instance.delete_an_application_with_http_info(application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_an_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **application_id** | **String** | String that uniquely identifies this application resource. |  |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## delete_an_incoming_number

Delete an Incoming Number

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

phone_number_id = 'phone_number_id_example' # String | String that uniquely identifies this phone number resource.


begin

  # Delete an Incoming Number
  api_instance.delete_an_incoming_number(phone_number_id)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_an_incoming_number: #{e}"
end
```

#### Using the delete_an_incoming_number_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_an_incoming_number_with_http_info(account_id, phone_number_id)

```ruby
begin
  # Delete an Incoming Number
  data, status_code, headers = api_instance.delete_an_incoming_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->delete_an_incoming_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **phone_number_id** | **String** | String that uniquely identifies this phone number resource. |  |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## dequeue_a_member

Dequeue a Member

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | String that uniquely identifies the Queue that the Member belongs to.

call_id = 'call_id_example' # String | ID if the Call that the Member belongs to


begin

  # Dequeue a Member
  result = api_instance.dequeue_a_member(queue_id, call_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->dequeue_a_member: #{e}"
end
```

#### Using the dequeue_a_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueMember>, Integer, Hash)> dequeue_a_member_with_http_info(account_id, queue_id, call_id)

```ruby
begin
  # Dequeue a Member
  data, status_code, headers = api_instance.dequeue_a_member_with_http_info(queue_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueMember>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->dequeue_a_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | String that uniquely identifies the Queue that the Member belongs to. |  |

| **call_id** | **String** | ID if the Call that the Member belongs to |  |


### Return type

[**QueueMember**](QueueMember.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## dequeue_head_member

Dequeue Head Member

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | String that uniquely identifies this queue resource.


begin

  # Dequeue Head Member
  result = api_instance.dequeue_head_member(queue_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->dequeue_head_member: #{e}"
end
```

#### Using the dequeue_head_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueMember>, Integer, Hash)> dequeue_head_member_with_http_info(account_id, queue_id)

```ruby
begin
  # Dequeue Head Member
  data, status_code, headers = api_instance.dequeue_head_member_with_http_info(queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueMember>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->dequeue_head_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | String that uniquely identifies this queue resource. |  |


### Return type

[**QueueMember**](QueueMember.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## download_a_recording_file

Download a Recording File

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

recording_id = 'recording_id_example' # String | String that uniquely identifies this recording resource.


begin

  # Download a Recording File
  result = api_instance.download_a_recording_file(recording_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->download_a_recording_file: #{e}"
end
```

#### Using the download_a_recording_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> download_a_recording_file_with_http_info(account_id, recording_id)

```ruby
begin
  # Download a Recording File
  data, status_code, headers = api_instance.download_a_recording_file_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->download_a_recording_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **recording_id** | **String** | String that uniquely identifies this recording resource. |  |


### Return type

**File**

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: audio/x-wav


## filter_logs

Filter Logs

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

filter_logs_request = Freeclimb::FilterLogsRequest.new({pql: 'pql_example'}) # FilterLogsRequest | Filter logs request paramters


begin

  # Filter Logs
  result = api_instance.filter_logs(filter_logs_request)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->filter_logs: #{e}"
end
```

#### Using the filter_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogList>, Integer, Hash)> filter_logs_with_http_info(account_id, filter_logs_request)

```ruby
begin
  # Filter Logs
  data, status_code, headers = api_instance.filter_logs_with_http_info(filter_logs_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->filter_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **filter_logs_request** | [**FilterLogsRequest**](FilterLogsRequest.md) | Filter logs request paramters |  |


### Return type

[**LogList**](LogList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## get_a_call

Get a Call

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

call_id = 'call_id_example' # String | String that uniquely identifies this call resource.


begin

  # Get a Call
  result = api_instance.get_a_call(call_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_call: #{e}"
end
```

#### Using the get_a_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallResult>, Integer, Hash)> get_a_call_with_http_info(account_id, call_id)

```ruby
begin
  # Get a Call
  data, status_code, headers = api_instance.get_a_call_with_http_info(call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **call_id** | **String** | String that uniquely identifies this call resource. |  |


### Return type

[**CallResult**](CallResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_conference

Get a Conference

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | A string that uniquely identifies this conference resource.


begin

  # Get a Conference
  result = api_instance.get_a_conference(conference_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_conference: #{e}"
end
```

#### Using the get_a_conference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceResult>, Integer, Hash)> get_a_conference_with_http_info(account_id, conference_id)

```ruby
begin
  # Get a Conference
  data, status_code, headers = api_instance.get_a_conference_with_http_info(conference_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_conference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | A string that uniquely identifies this conference resource. |  |


### Return type

[**ConferenceResult**](ConferenceResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_member

Get a Member

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | String that uniquely identifies the Queue that the Member belongs to.

call_id = 'call_id_example' # String | ID of the Call that the Member belongs to


begin

  # Get a Member
  result = api_instance.get_a_member(queue_id, call_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_member: #{e}"
end
```

#### Using the get_a_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueMember>, Integer, Hash)> get_a_member_with_http_info(account_id, queue_id, call_id)

```ruby
begin
  # Get a Member
  data, status_code, headers = api_instance.get_a_member_with_http_info(queue_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueMember>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | String that uniquely identifies the Queue that the Member belongs to. |  |

| **call_id** | **String** | ID of the Call that the Member belongs to |  |


### Return type

[**QueueMember**](QueueMember.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_participant

Get a Participant

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | ID of the conference this participant is in.

call_id = 'call_id_example' # String | ID of the Call associated with this participant.


begin

  # Get a Participant
  result = api_instance.get_a_participant(conference_id, call_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_participant: #{e}"
end
```

#### Using the get_a_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceParticipantResult>, Integer, Hash)> get_a_participant_with_http_info(account_id, conference_id, call_id)

```ruby
begin
  # Get a Participant
  data, status_code, headers = api_instance.get_a_participant_with_http_info(conference_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceParticipantResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | ID of the conference this participant is in. |  |

| **call_id** | **String** | ID of the Call associated with this participant. |  |


### Return type

[**ConferenceParticipantResult**](ConferenceParticipantResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_queue

Get a Queue

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | A string that uniquely identifies this queue resource.


begin

  # Get a Queue
  result = api_instance.get_a_queue(queue_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_queue: #{e}"
end
```

#### Using the get_a_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueResult>, Integer, Hash)> get_a_queue_with_http_info(account_id, queue_id)

```ruby
begin
  # Get a Queue
  data, status_code, headers = api_instance.get_a_queue_with_http_info(queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | A string that uniquely identifies this queue resource. |  |


### Return type

[**QueueResult**](QueueResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_a_recording

Get a Recording

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

recording_id = 'recording_id_example' # String | String that uniquely identifies this recording resource.


begin

  # Get a Recording
  result = api_instance.get_a_recording(recording_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_recording: #{e}"
end
```

#### Using the get_a_recording_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecordingResult>, Integer, Hash)> get_a_recording_with_http_info(account_id, recording_id)

```ruby
begin
  # Get a Recording
  data, status_code, headers = api_instance.get_a_recording_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecordingResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_a_recording_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **recording_id** | **String** | String that uniquely identifies this recording resource. |  |


### Return type

[**RecordingResult**](RecordingResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_an_account

Get an Account

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new


begin

  # Get an Account
  result = api_instance.get_an_account()
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_account: #{e}"
end
```

#### Using the get_an_account_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AccountResult>, Integer, Hash)> get_an_account_with_http_info(account_id)

```ruby
begin
  # Get an Account
  data, status_code, headers = api_instance.get_an_account_with_http_info()
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AccountResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |


### Return type

[**AccountResult**](AccountResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_an_application

Get an Application

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

application_id = 'application_id_example' # String | A string that uniquely identifies this application resource.


begin

  # Get an Application
  result = api_instance.get_an_application(application_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_application: #{e}"
end
```

#### Using the get_an_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResult>, Integer, Hash)> get_an_application_with_http_info(account_id, application_id)

```ruby
begin
  # Get an Application
  data, status_code, headers = api_instance.get_an_application_with_http_info(application_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **application_id** | **String** | A string that uniquely identifies this application resource. |  |


### Return type

[**ApplicationResult**](ApplicationResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_an_incoming_number

Get an Incoming Number

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

phone_number_id = 'phone_number_id_example' # String | String that uniquely identifies this phone number resource.


begin

  # Get an Incoming Number
  result = api_instance.get_an_incoming_number(phone_number_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_incoming_number: #{e}"
end
```

#### Using the get_an_incoming_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingNumberResult>, Integer, Hash)> get_an_incoming_number_with_http_info(account_id, phone_number_id)

```ruby
begin
  # Get an Incoming Number
  data, status_code, headers = api_instance.get_an_incoming_number_with_http_info(phone_number_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingNumberResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_incoming_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **phone_number_id** | **String** | String that uniquely identifies this phone number resource. |  |


### Return type

[**IncomingNumberResult**](IncomingNumberResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_an_sms_message

Get an SMS Message

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

message_id = 'message_id_example' # String | String that uniquely identifies this Message resource.


begin

  # Get an SMS Message
  result = api_instance.get_an_sms_message(message_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_sms_message: #{e}"
end
```

#### Using the get_an_sms_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResult>, Integer, Hash)> get_an_sms_message_with_http_info(account_id, message_id)

```ruby
begin
  # Get an SMS Message
  data, status_code, headers = api_instance.get_an_sms_message_with_http_info(message_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_an_sms_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **message_id** | **String** | String that uniquely identifies this Message resource. |  |


### Return type

[**MessageResult**](MessageResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## get_head_member

Get Head Member

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | String that uniquely identifies the Queue that the Member belongs to.


begin

  # Get Head Member
  result = api_instance.get_head_member(queue_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_head_member: #{e}"
end
```

#### Using the get_head_member_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueMember>, Integer, Hash)> get_head_member_with_http_info(account_id, queue_id)

```ruby
begin
  # Get Head Member
  data, status_code, headers = api_instance.get_head_member_with_http_info(queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueMember>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->get_head_member_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | String that uniquely identifies the Queue that the Member belongs to. |  |


### Return type

[**QueueMember**](QueueMember.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_active_queues

List Active Queues

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  _alias: '_alias_example' # String | Return only the Queue resources with aliases that exactly match this name.
}

begin

  # List Active Queues
  result = api_instance.list_active_queues(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_active_queues: #{e}"
end
```

#### Using the list_active_queues_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueList>, Integer, Hash)> list_active_queues_with_http_info(account_id, opts)

```ruby
begin
  # List Active Queues
  data, status_code, headers = api_instance.list_active_queues_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_active_queues_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_alias** | **String** | Return only the Queue resources with aliases that exactly match this name. | [optional] |


### Return type

[**QueueList**](QueueList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_all_account_logs

List All Account Logs

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new


begin

  # List All Account Logs
  result = api_instance.list_all_account_logs()
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_all_account_logs: #{e}"
end
```

#### Using the list_all_account_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogList>, Integer, Hash)> list_all_account_logs_with_http_info(account_id)

```ruby
begin
  # List All Account Logs
  data, status_code, headers = api_instance.list_all_account_logs_with_http_info()
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_all_account_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |


### Return type

[**LogList**](LogList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_applications

List applications

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  _alias: '_alias_example' # String | Return only applications with aliases that exactly match this value.
}

begin

  # List applications
  result = api_instance.list_applications(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_applications: #{e}"
end
```

#### Using the list_applications_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationList>, Integer, Hash)> list_applications_with_http_info(account_id, opts)

```ruby
begin
  # List applications
  data, status_code, headers = api_instance.list_applications_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_applications_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **_alias** | **String** | Return only applications with aliases that exactly match this value. | [optional] |


### Return type

[**ApplicationList**](ApplicationList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_available_numbers

List available numbers

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  phone_number: 'phone_number_example', # String | PCRE-compatible regular expression to filter against `phoneNumber` field, which is in E.164 format.
  region: 'region_example', # String | State or province of this phone number.
  country: 'country_example', # String | Country of this phone number.
  voice_enabled: true, # Boolean | Indicates whether the phone number can handle Calls. Typically set to true for all numbers.
  sms_enabled: true, # Boolean | Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers.
  capabilities_voice: true, # Boolean | 
  capabilities_sms: true, # Boolean | 
  capabilities_toll_free: true, # Boolean | 
  capabilities_ten_dlc: true, # Boolean | 
  capabilities_short_code: true # Boolean | 
}

begin

  # List available numbers
  result = api_instance.list_available_numbers(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_available_numbers: #{e}"
end
```

#### Using the list_available_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<AvailableNumberList>, Integer, Hash)> list_available_numbers_with_http_info(opts)

```ruby
begin
  # List available numbers
  data, status_code, headers = api_instance.list_available_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <AvailableNumberList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_available_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **phone_number** | **String** | PCRE-compatible regular expression to filter against &#x60;phoneNumber&#x60; field, which is in E.164 format. | [optional] |

| **region** | **String** | State or province of this phone number. | [optional] |

| **country** | **String** | Country of this phone number. | [optional] |

| **voice_enabled** | **Boolean** | Indicates whether the phone number can handle Calls. Typically set to true for all numbers. | [optional][default to true] |

| **sms_enabled** | **Boolean** | Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers. | [optional][default to true] |

| **capabilities_voice** | **Boolean** |  | [optional] |

| **capabilities_sms** | **Boolean** |  | [optional] |

| **capabilities_toll_free** | **Boolean** |  | [optional] |

| **capabilities_ten_dlc** | **Boolean** |  | [optional] |

| **capabilities_short_code** | **Boolean** |  | [optional] |


### Return type

[**AvailableNumberList**](AvailableNumberList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_call_logs

List Call Logs

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

call_id = 'call_id_example' # String | String that uniquely identifies this call resource.


begin

  # List Call Logs
  result = api_instance.list_call_logs(call_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_call_logs: #{e}"
end
```

#### Using the list_call_logs_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<LogList>, Integer, Hash)> list_call_logs_with_http_info(account_id, call_id)

```ruby
begin
  # List Call Logs
  data, status_code, headers = api_instance.list_call_logs_with_http_info(call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <LogList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_call_logs_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **call_id** | **String** | String that uniquely identifies this call resource. |  |


### Return type

[**LogList**](LogList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_call_recordings

List Call Recordings

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

call_id = 'call_id_example' # String | String that uniquely identifies this call resource.

opts = {
  date_created: 'date_created_example' # String | Only show recordings created on the specified date, in the form *YYYY-MM-DD*.
}

begin

  # List Call Recordings
  result = api_instance.list_call_recordings(call_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_call_recordings: #{e}"
end
```

#### Using the list_call_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecordingList>, Integer, Hash)> list_call_recordings_with_http_info(account_id, call_id, opts)

```ruby
begin
  # List Call Recordings
  data, status_code, headers = api_instance.list_call_recordings_with_http_info(call_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecordingList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_call_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **call_id** | **String** | String that uniquely identifies this call resource. |  |

| **date_created** | **String** | Only show recordings created on the specified date, in the form *YYYY-MM-DD*. | [optional] |


### Return type

[**RecordingList**](RecordingList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_calls

List Calls

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  active: true, # Boolean | If active is set to true then all calls of the nature queued, ringing, inProgress are returned in the query.
  to: 'to_example', # String | Only show Calls to this phone number.
  from: 'from_example', # String | Only show Calls from this phone number.
  status: 'status_example', # String | Only show Calls currently in this status. May be `queued`, `ringing`, `inProgress`, `canceled`, `completed`, `failed`, `busy`, or `noAnswer`.
  start_time: 'start_time_example', # String | Only show Calls that started at or after this time, given as YYYY-MM-DD hh:mm:ss.
  end_time: 'end_time_example', # String | Only show Calls that ended at or before this time, given as YYYY-MM- DD hh:mm:ss.
  parent_call_id: 'parent_call_id_example' # String | Only show Calls spawned by the call with this ID.
}

begin

  # List Calls
  result = api_instance.list_calls(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_calls: #{e}"
end
```

#### Using the list_calls_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallList>, Integer, Hash)> list_calls_with_http_info(account_id, opts)

```ruby
begin
  # List Calls
  data, status_code, headers = api_instance.list_calls_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_calls_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **active** | **Boolean** | If active is set to true then all calls of the nature queued, ringing, inProgress are returned in the query. | [optional][default to false] |

| **to** | **String** | Only show Calls to this phone number. | [optional] |

| **from** | **String** | Only show Calls from this phone number. | [optional] |

| **status** | **String** | Only show Calls currently in this status. May be &#x60;queued&#x60;, &#x60;ringing&#x60;, &#x60;inProgress&#x60;, &#x60;canceled&#x60;, &#x60;completed&#x60;, &#x60;failed&#x60;, &#x60;busy&#x60;, or &#x60;noAnswer&#x60;. | [optional] |

| **start_time** | **String** | Only show Calls that started at or after this time, given as YYYY-MM-DD hh:mm:ss. | [optional] |

| **end_time** | **String** | Only show Calls that ended at or before this time, given as YYYY-MM- DD hh:mm:ss. | [optional] |

| **parent_call_id** | **String** | Only show Calls spawned by the call with this ID. | [optional] |


### Return type

[**CallList**](CallList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_conferences

List Conferences

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  status: 'status_example', # String | Only show conferences that currently have the specified status. Valid values: `empty`, `populated`, `inProgress`, or `terminated`.
  _alias: '_alias_example', # String | List Conferences whose alias exactly matches this string.
  date_created: 'date_created_example', # String | Only show Conferences that were created on the specified date, in the form *YYYY-MM-DD*.
  date_updated: 'date_updated_example' # String | Only show Conferences that were last updated on the specified date, in the form *YYYY-MM-DD*.
}

begin

  # List Conferences
  result = api_instance.list_conferences(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_conferences: #{e}"
end
```

#### Using the list_conferences_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceList>, Integer, Hash)> list_conferences_with_http_info(account_id, opts)

```ruby
begin
  # List Conferences
  data, status_code, headers = api_instance.list_conferences_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_conferences_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **status** | **String** | Only show conferences that currently have the specified status. Valid values: &#x60;empty&#x60;, &#x60;populated&#x60;, &#x60;inProgress&#x60;, or &#x60;terminated&#x60;. | [optional] |

| **_alias** | **String** | List Conferences whose alias exactly matches this string. | [optional] |

| **date_created** | **String** | Only show Conferences that were created on the specified date, in the form *YYYY-MM-DD*. | [optional] |

| **date_updated** | **String** | Only show Conferences that were last updated on the specified date, in the form *YYYY-MM-DD*. | [optional] |


### Return type

[**ConferenceList**](ConferenceList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_incoming_numbers

List Incoming Numbers

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  phone_number: 'phone_number_example', # String | Only show incoming phone number resources that match this PCRE-compatible regular expression.
  _alias: '_alias_example', # String | Only show incoming phone numbers with aliases that exactly match this value.
  region: 'region_example', # String | State or province of this phone number.
  country: 'country_example', # String | Country of this phone number.
  application_id: 'application_id_example', # String | ID of the Application that FreeClimb should contact if a Call or SMS arrives for this phone number or a Call from this number is placed. An incoming phone number is not useful until associated with an applicationId.
  has_application: true, # Boolean | Indication of whether the phone number has an application linked to it.
  voice_enabled: true, # Boolean | Indicates whether the phone number can handle Calls. Typically set to true for all numbers.
  sms_enabled: true, # Boolean | Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers.
  capabilities_voice: true, # Boolean | 
  capabilities_sms: true, # Boolean | 
  capabilities_toll_free: true, # Boolean | 
  capabilities_ten_dlc: true, # Boolean | 
  capabilities_short_code: true, # Boolean | 
  offnet: true # Boolean | Indication of whether the phone number was registered as an offnet number. This field will be rendered only for requests to the IncomingPhone number resource.
}

begin

  # List Incoming Numbers
  result = api_instance.list_incoming_numbers(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_incoming_numbers: #{e}"
end
```

#### Using the list_incoming_numbers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingNumberList>, Integer, Hash)> list_incoming_numbers_with_http_info(account_id, opts)

```ruby
begin
  # List Incoming Numbers
  data, status_code, headers = api_instance.list_incoming_numbers_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingNumberList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_incoming_numbers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **phone_number** | **String** | Only show incoming phone number resources that match this PCRE-compatible regular expression. | [optional] |

| **_alias** | **String** | Only show incoming phone numbers with aliases that exactly match this value. | [optional] |

| **region** | **String** | State or province of this phone number. | [optional] |

| **country** | **String** | Country of this phone number. | [optional] |

| **application_id** | **String** | ID of the Application that FreeClimb should contact if a Call or SMS arrives for this phone number or a Call from this number is placed. An incoming phone number is not useful until associated with an applicationId. | [optional] |

| **has_application** | **Boolean** | Indication of whether the phone number has an application linked to it. | [optional][default to false] |

| **voice_enabled** | **Boolean** | Indicates whether the phone number can handle Calls. Typically set to true for all numbers. | [optional][default to true] |

| **sms_enabled** | **Boolean** | Indication of whether the phone number can handle sending and receiving SMS messages. Typically set to true for all numbers. | [optional][default to true] |

| **capabilities_voice** | **Boolean** |  | [optional] |

| **capabilities_sms** | **Boolean** |  | [optional] |

| **capabilities_toll_free** | **Boolean** |  | [optional] |

| **capabilities_ten_dlc** | **Boolean** |  | [optional] |

| **capabilities_short_code** | **Boolean** |  | [optional] |

| **offnet** | **Boolean** | Indication of whether the phone number was registered as an offnet number. This field will be rendered only for requests to the IncomingPhone number resource. | [optional] |


### Return type

[**IncomingNumberList**](IncomingNumberList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_members

List Members

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | String that uniquely identifies the Queue that the Member belongs to.


begin

  # List Members
  result = api_instance.list_members(queue_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_members: #{e}"
end
```

#### Using the list_members_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueMemberList>, Integer, Hash)> list_members_with_http_info(account_id, queue_id)

```ruby
begin
  # List Members
  data, status_code, headers = api_instance.list_members_with_http_info(queue_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueMemberList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_members_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | String that uniquely identifies the Queue that the Member belongs to. |  |


### Return type

[**QueueMemberList**](QueueMemberList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_participants

List Participants

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | ID of the conference this participant is in.

opts = {
  talk: true, # Boolean | Only show Participants with the talk privilege.
  listen: true # Boolean | Only show Participants with the listen privilege.
}

begin

  # List Participants
  result = api_instance.list_participants(conference_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_participants: #{e}"
end
```

#### Using the list_participants_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceParticipantList>, Integer, Hash)> list_participants_with_http_info(account_id, conference_id, opts)

```ruby
begin
  # List Participants
  data, status_code, headers = api_instance.list_participants_with_http_info(conference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceParticipantList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_participants_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | ID of the conference this participant is in. |  |

| **talk** | **Boolean** | Only show Participants with the talk privilege. | [optional] |

| **listen** | **Boolean** | Only show Participants with the listen privilege. | [optional] |


### Return type

[**ConferenceParticipantList**](ConferenceParticipantList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_recordings

List Recordings

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  call_id: 'call_id_example', # String | Show only Recordings made during the Call with this ID.
  conference_id: 'conference_id_example', # String | Show only Recordings made during the conference with this ID.
  date_created: 'date_created_example' # String | Only show Recordings created on this date, formatted as *YYYY-MM-DD*.
}

begin

  # List Recordings
  result = api_instance.list_recordings(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_recordings: #{e}"
end
```

#### Using the list_recordings_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<RecordingList>, Integer, Hash)> list_recordings_with_http_info(account_id, opts)

```ruby
begin
  # List Recordings
  data, status_code, headers = api_instance.list_recordings_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <RecordingList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_recordings_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **call_id** | **String** | Show only Recordings made during the Call with this ID. | [optional] |

| **conference_id** | **String** | Show only Recordings made during the conference with this ID. | [optional] |

| **date_created** | **String** | Only show Recordings created on this date, formatted as *YYYY-MM-DD*. | [optional] |


### Return type

[**RecordingList**](RecordingList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## list_sms_messages

List SMS Messages

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  to: 'to_example', # String | Only show Messages to this phone number.
  from: 'from_example', # String | Only show Messages from this phone number.
  begin_time: 'begin_time_example', # String | Only show Messages sent at or after this time (GMT), given as *YYYY-MM-DD hh:mm:ss*.
  end_time: 'end_time_example', # String | Only show messages sent at or before this time (GMT), given as *YYYY-MM-DD hh:mm*..
  direction: 'inbound' # String | Either `inbound` or `outbound`. Only show Messages that were either *sent from* or *received by* FreeClimb.
}

begin

  # List SMS Messages
  result = api_instance.list_sms_messages(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_sms_messages: #{e}"
end
```

#### Using the list_sms_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessagesList>, Integer, Hash)> list_sms_messages_with_http_info(account_id, opts)

```ruby
begin
  # List SMS Messages
  data, status_code, headers = api_instance.list_sms_messages_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessagesList>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->list_sms_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **to** | **String** | Only show Messages to this phone number. | [optional] |

| **from** | **String** | Only show Messages from this phone number. | [optional] |

| **begin_time** | **String** | Only show Messages sent at or after this time (GMT), given as *YYYY-MM-DD hh:mm:ss*. | [optional] |

| **end_time** | **String** | Only show messages sent at or before this time (GMT), given as *YYYY-MM-DD hh:mm*.. | [optional] |

| **direction** | **String** | Either &#x60;inbound&#x60; or &#x60;outbound&#x60;. Only show Messages that were either *sent from* or *received by* FreeClimb. | [optional] |


### Return type

[**MessagesList**](MessagesList.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## make_a_call

Make a Call

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  make_call_request: Freeclimb::MakeCallRequest.new({from: 'from_example', to: 'to_example'}) # MakeCallRequest | Call details for making a call
}

begin

  # Make a Call
  result = api_instance.make_a_call(opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->make_a_call: #{e}"
end
```

#### Using the make_a_call_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<CallResult>, Integer, Hash)> make_a_call_with_http_info(account_id, opts)

```ruby
begin
  # Make a Call
  data, status_code, headers = api_instance.make_a_call_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <CallResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->make_a_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **make_call_request** | [**MakeCallRequest**](MakeCallRequest.md) | Call details for making a call | [optional] |


### Return type

[**CallResult**](CallResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## remove_a_participant

Remove a Participant

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | ID of the conference this participant is in.

call_id = 'call_id_example' # String | ID of the Call associated with this participant.


begin

  # Remove a Participant
  api_instance.remove_a_participant(conference_id, call_id)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->remove_a_participant: #{e}"
end
```

#### Using the remove_a_participant_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> remove_a_participant_with_http_info(account_id, conference_id, call_id)

```ruby
begin
  # Remove a Participant
  data, status_code, headers = api_instance.remove_a_participant_with_http_info(conference_id, call_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->remove_a_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | ID of the conference this participant is in. |  |

| **call_id** | **String** | ID of the Call associated with this participant. |  |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## send_an_sms_message

Send an SMS Message

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

message_request = Freeclimb::MessageRequest.new({from: 'from_example', to: 'to_example', text: 'text_example'}) # MessageRequest | Details to create a message


begin

  # Send an SMS Message
  result = api_instance.send_an_sms_message(message_request)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->send_an_sms_message: #{e}"
end
```

#### Using the send_an_sms_message_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<MessageResult>, Integer, Hash)> send_an_sms_message_with_http_info(account_id, message_request)

```ruby
begin
  # Send an SMS Message
  data, status_code, headers = api_instance.send_an_sms_message_with_http_info(message_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <MessageResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->send_an_sms_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **message_request** | [**MessageRequest**](MessageRequest.md) | Details to create a message |  |


### Return type

[**MessageResult**](MessageResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## stream_a_recording_file

Stream a Recording File

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

recording_id = 'recording_id_example' # String | String that uniquely identifies this recording resource.


begin

  # Stream a Recording File
  result = api_instance.stream_a_recording_file(recording_id)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->stream_a_recording_file: #{e}"
end
```

#### Using the stream_a_recording_file_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(File, Integer, Hash)> stream_a_recording_file_with_http_info(account_id, recording_id)

```ruby
begin
  # Stream a Recording File
  data, status_code, headers = api_instance.stream_a_recording_file_with_http_info(recording_id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => File
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->stream_a_recording_file_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **recording_id** | **String** | String that uniquely identifies this recording resource. |  |


### Return type

**File**

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: audio/x-wav


## update_a_conference

Update a Conference

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | String that uniquely identifies this conference resource.

opts = {
  update_conference_request: Freeclimb::UpdateConferenceRequest.new # UpdateConferenceRequest | Conference Details to update
}

begin

  # Update a Conference
  result = api_instance.update_a_conference(conference_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_conference: #{e}"
end
```

#### Using the update_a_conference_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceResult>, Integer, Hash)> update_a_conference_with_http_info(account_id, conference_id, opts)

```ruby
begin
  # Update a Conference
  data, status_code, headers = api_instance.update_a_conference_with_http_info(conference_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_conference_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | String that uniquely identifies this conference resource. |  |

| **update_conference_request** | [**UpdateConferenceRequest**](UpdateConferenceRequest.md) | Conference Details to update | [optional] |


### Return type

[**ConferenceResult**](ConferenceResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_live_call

Update a Live Call

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

call_id = 'call_id_example' # String | String that uniquely identifies this call resource.

update_call_request = Freeclimb::UpdateCallRequest.new({status: 'canceled'}) # UpdateCallRequest | Call details to update


begin

  # Update a Live Call
  api_instance.update_a_live_call(call_id, update_call_request)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_live_call: #{e}"
end
```

#### Using the update_a_live_call_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_a_live_call_with_http_info(account_id, call_id, update_call_request)

```ruby
begin
  # Update a Live Call
  data, status_code, headers = api_instance.update_a_live_call_with_http_info(call_id, update_call_request)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_live_call_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **call_id** | **String** | String that uniquely identifies this call resource. |  |

| **update_call_request** | [**UpdateCallRequest**](UpdateCallRequest.md) | Call details to update |  |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_a_participant

Update a Participant

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

conference_id = 'conference_id_example' # String | ID of the conference this participant is in.

call_id = 'call_id_example' # String | ID of the Call associated with this participant.

opts = {
  update_conference_participant_request: Freeclimb::UpdateConferenceParticipantRequest.new # UpdateConferenceParticipantRequest | Conference participant details to update
}

begin

  # Update a Participant
  result = api_instance.update_a_participant(conference_id, call_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_participant: #{e}"
end
```

#### Using the update_a_participant_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ConferenceParticipantResult>, Integer, Hash)> update_a_participant_with_http_info(account_id, conference_id, call_id, opts)

```ruby
begin
  # Update a Participant
  data, status_code, headers = api_instance.update_a_participant_with_http_info(conference_id, call_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ConferenceParticipantResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_participant_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **conference_id** | **String** | ID of the conference this participant is in. |  |

| **call_id** | **String** | ID of the Call associated with this participant. |  |

| **update_conference_participant_request** | [**UpdateConferenceParticipantRequest**](UpdateConferenceParticipantRequest.md) | Conference participant details to update | [optional] |


### Return type

[**ConferenceParticipantResult**](ConferenceParticipantResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_a_queue

Update a Queue

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

queue_id = 'queue_id_example' # String | A string that uniquely identifies this Queue resource.

opts = {
  queue_request: Freeclimb::QueueRequest.new # QueueRequest | Queue Details to update
}

begin

  # Update a Queue
  result = api_instance.update_a_queue(queue_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_queue: #{e}"
end
```

#### Using the update_a_queue_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<QueueResult>, Integer, Hash)> update_a_queue_with_http_info(account_id, queue_id, opts)

```ruby
begin
  # Update a Queue
  data, status_code, headers = api_instance.update_a_queue_with_http_info(queue_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <QueueResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_a_queue_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **queue_id** | **String** | A string that uniquely identifies this Queue resource. |  |

| **queue_request** | [**QueueRequest**](QueueRequest.md) | Queue Details to update | [optional] |


### Return type

[**QueueResult**](QueueResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_an_account

Manage an account

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

opts = {
  account_request: Freeclimb::AccountRequest.new # AccountRequest | Account details to update
}

begin

  # Manage an account
  api_instance.update_an_account(opts)
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_account: #{e}"
end
```

#### Using the update_an_account_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_an_account_with_http_info(account_id, opts)

```ruby
begin
  # Manage an account
  data, status_code, headers = api_instance.update_an_account_with_http_info(opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_account_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **account_request** | [**AccountRequest**](AccountRequest.md) | Account details to update | [optional] |


### Return type

nil (empty response body)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: Not defined


## update_an_application

Update an application

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

application_id = 'application_id_example' # String | A string that uniquely identifies this application resource.

opts = {
  application_request: Freeclimb::ApplicationRequest.new # ApplicationRequest | Application details to update.
}

begin

  # Update an application
  result = api_instance.update_an_application(application_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_application: #{e}"
end
```

#### Using the update_an_application_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ApplicationResult>, Integer, Hash)> update_an_application_with_http_info(account_id, application_id, opts)

```ruby
begin
  # Update an application
  data, status_code, headers = api_instance.update_an_application_with_http_info(application_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ApplicationResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_application_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **application_id** | **String** | A string that uniquely identifies this application resource. |  |

| **application_request** | [**ApplicationRequest**](ApplicationRequest.md) | Application details to update. | [optional] |


### Return type

[**ApplicationResult**](ApplicationResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## update_an_incoming_number

Update an Incoming Number

### Examples

```ruby
require 'time'
require 'freeclimb'
# setup authorization
Freeclimb.configure do |config|
  # Configure HTTP basic authorization: fc
  config.username = 'ACCOUNT_ID'
  config.password = 'API_KEY'
end

api_instance = Freeclimb::DefaultApi.new

phone_number_id = 'phone_number_id_example' # String | String that uniquely identifies this phone number resource.

opts = {
  incoming_number_request: Freeclimb::IncomingNumberRequest.new # IncomingNumberRequest | Incoming Number details to update
}

begin

  # Update an Incoming Number
  result = api_instance.update_an_incoming_number(phone_number_id, opts)
  p result
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_incoming_number: #{e}"
end
```

#### Using the update_an_incoming_number_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<IncomingNumberResult>, Integer, Hash)> update_an_incoming_number_with_http_info(account_id, phone_number_id, opts)

```ruby
begin
  # Update an Incoming Number
  data, status_code, headers = api_instance.update_an_incoming_number_with_http_info(phone_number_id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <IncomingNumberResult>
rescue Freeclimb::ApiError => e
  puts "Error when calling DefaultApi->update_an_incoming_number_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |

| **phone_number_id** | **String** | String that uniquely identifies this phone number resource. |  |

| **incoming_number_request** | [**IncomingNumberRequest**](IncomingNumberRequest.md) | Incoming Number details to update | [optional] |


### Return type

[**IncomingNumberResult**](IncomingNumberResult.md)

### Authorization

[fc](../README.md#fc)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

