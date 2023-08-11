=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

# Common files
require 'freeclimb/api_client'
require 'freeclimb/api_error'
require 'freeclimb/version'
require 'freeclimb/configuration'

# Models
require 'freeclimb/models/account_request'
require 'freeclimb/models/account_result'
require 'freeclimb/models/account_result_all_of'
require 'freeclimb/models/account_status'
require 'freeclimb/models/account_type'
require 'freeclimb/models/add_to_conference_all_of'
require 'freeclimb/models/answered_by'
require 'freeclimb/models/application_list'
require 'freeclimb/models/application_list_all_of'
require 'freeclimb/models/application_request'
require 'freeclimb/models/application_result'
require 'freeclimb/models/application_result_all_of'
require 'freeclimb/models/available_number'
require 'freeclimb/models/available_number_list'
require 'freeclimb/models/available_number_list_all_of'
require 'freeclimb/models/buy_incoming_number_request'
require 'freeclimb/models/call_direction'
require 'freeclimb/models/call_list'
require 'freeclimb/models/call_list_all_of'
require 'freeclimb/models/call_result'
require 'freeclimb/models/call_result_all_of'
require 'freeclimb/models/call_status'
require 'freeclimb/models/capabilities'
require 'freeclimb/models/conference_list'
require 'freeclimb/models/conference_list_all_of'
require 'freeclimb/models/conference_participant_list'
require 'freeclimb/models/conference_participant_list_all_of'
require 'freeclimb/models/conference_participant_result'
require 'freeclimb/models/conference_participant_result_all_of'
require 'freeclimb/models/conference_result'
require 'freeclimb/models/conference_result_all_of'
require 'freeclimb/models/conference_status'
require 'freeclimb/models/create_conference_all_of'
require 'freeclimb/models/create_conference_request'
require 'freeclimb/models/enqueue_all_of'
require 'freeclimb/models/filter_logs_request'
require 'freeclimb/models/get_digits_all_of'
require 'freeclimb/models/get_speech_all_of'
require 'freeclimb/models/get_speech_reason'
require 'freeclimb/models/grammar_file_built_in'
require 'freeclimb/models/grammar_type'
require 'freeclimb/models/hangup_all_of'
require 'freeclimb/models/if_machine'
require 'freeclimb/models/incoming_number_list'
require 'freeclimb/models/incoming_number_list_all_of'
require 'freeclimb/models/incoming_number_request'
require 'freeclimb/models/incoming_number_result'
require 'freeclimb/models/incoming_number_result_all_of'
require 'freeclimb/models/language'
require 'freeclimb/models/log_level'
require 'freeclimb/models/log_list'
require 'freeclimb/models/log_list_all_of'
require 'freeclimb/models/log_result'
require 'freeclimb/models/machine_type'
require 'freeclimb/models/make_call_request'
require 'freeclimb/models/message_direction'
require 'freeclimb/models/message_request'
require 'freeclimb/models/message_request_all_of'
require 'freeclimb/models/message_result'
require 'freeclimb/models/message_result_all_of'
require 'freeclimb/models/message_status'
require 'freeclimb/models/messages_list'
require 'freeclimb/models/messages_list_all_of'
require 'freeclimb/models/mutable_resource_model'
require 'freeclimb/models/out_dial_all_of'
require 'freeclimb/models/pagination_model'
require 'freeclimb/models/park_all_of'
require 'freeclimb/models/pause_all_of'
require 'freeclimb/models/percl_command'
require 'freeclimb/models/percl_script'
require 'freeclimb/models/play_all_of'
require 'freeclimb/models/play_beep'
require 'freeclimb/models/play_early_media_all_of'
require 'freeclimb/models/queue_list'
require 'freeclimb/models/queue_list_all_of'
require 'freeclimb/models/queue_member'
require 'freeclimb/models/queue_member_list'
require 'freeclimb/models/queue_member_list_all_of'
require 'freeclimb/models/queue_request'
require 'freeclimb/models/queue_result'
require 'freeclimb/models/queue_result_all_of'
require 'freeclimb/models/queue_result_status'
require 'freeclimb/models/record_utterance_all_of'
require 'freeclimb/models/record_utterance_term_reason'
require 'freeclimb/models/recording_list'
require 'freeclimb/models/recording_list_all_of'
require 'freeclimb/models/recording_result'
require 'freeclimb/models/recording_result_all_of'
require 'freeclimb/models/redirect_all_of'
require 'freeclimb/models/reject_all_of'
require 'freeclimb/models/remove_from_conference_all_of'
require 'freeclimb/models/request_type'
require 'freeclimb/models/sms_ten_dlc_brand'
require 'freeclimb/models/sms_ten_dlc_brands_list_result'
require 'freeclimb/models/sms_ten_dlc_brands_list_result_all_of'
require 'freeclimb/models/sms_ten_dlc_campaign'
require 'freeclimb/models/sms_ten_dlc_campaigns_list_result'
require 'freeclimb/models/sms_ten_dlc_campaigns_list_result_all_of'
require 'freeclimb/models/sms_ten_dlc_partner_campaign'
require 'freeclimb/models/sms_ten_dlc_partner_campaign_brand'
require 'freeclimb/models/sms_ten_dlc_partner_campaigns_list_result'
require 'freeclimb/models/sms_ten_dlc_partner_campaigns_list_result_all_of'
require 'freeclimb/models/say_all_of'
require 'freeclimb/models/send_digits_all_of'
require 'freeclimb/models/set_listen_all_of'
require 'freeclimb/models/set_talk_all_of'
require 'freeclimb/models/sms_all_of'
require 'freeclimb/models/terminate_conference_all_of'
require 'freeclimb/models/transcribe_utterance'
require 'freeclimb/models/transcribe_utterance_record'
require 'freeclimb/models/update_call_request'
require 'freeclimb/models/update_call_request_status'
require 'freeclimb/models/update_conference_participant_request'
require 'freeclimb/models/update_conference_request'
require 'freeclimb/models/update_conference_request_status'
require 'freeclimb/models/add_to_conference'
require 'freeclimb/models/create_conference'
require 'freeclimb/models/dequeue'
require 'freeclimb/models/enqueue'
require 'freeclimb/models/get_digits'
require 'freeclimb/models/get_speech'
require 'freeclimb/models/hangup'
require 'freeclimb/models/out_dial'
require 'freeclimb/models/park'
require 'freeclimb/models/pause'
require 'freeclimb/models/play'
require 'freeclimb/models/play_early_media'
require 'freeclimb/models/record_utterance'
require 'freeclimb/models/redirect'
require 'freeclimb/models/reject'
require 'freeclimb/models/remove_from_conference'
require 'freeclimb/models/say'
require 'freeclimb/models/send_digits'
require 'freeclimb/models/set_listen'
require 'freeclimb/models/set_talk'
require 'freeclimb/models/sms'
require 'freeclimb/models/start_record_call'
require 'freeclimb/models/terminate_conference'
require 'freeclimb/models/unpark'

# APIs
require 'freeclimb/api/default_api'

#Utils
require 'freeclimb/utils/signature_information'
require 'freeclimb/utils/request_verifier'

module Freeclimb
  class << self
    # Customize default settings for the SDK using block.
    #   Freeclimb.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
