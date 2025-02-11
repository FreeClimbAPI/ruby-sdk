=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'
include Freeclimb

# Unit tests for Freeclimb::RecordWebhook
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordWebhook do
  let(:instance) { Freeclimb::RecordWebhook.new }

  describe 'test an instance of RecordWebhook' do
    it 'should create an instance of RecordWebhook' do
      expect(instance).to be_instance_of(Freeclimb::RecordWebhook)
    end
  end
  describe '.deserialize' do
    it 'deserializes a json payload into instance of RecordWebhook' do
      payload = '{ "requestType": "record" }'
      expect(Freeclimb::RecordWebhook.deserialize(payload)).to be_instance_of(Freeclimb::RecordWebhook)
    end
  end
  
  describe 'test attribute "request_type"' do
    it 'should work' do
    
      instance.request_type = "TEST_STRING"
      expect(instance.request_type).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
    
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "call_id"' do
    it 'should work' do
    
      instance.call_id = "TEST_STRING"
      expect(instance.call_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "from"' do
    it 'should work' do
    
      instance.from = "TEST_STRING"
      expect(instance.from).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "to"' do
    it 'should work' do
    
      instance.to = "TEST_STRING"
      expect(instance.to).to eq("TEST_STRING")  
        
    
    
    end
  end


  describe 'test attribute "call_status"' do
    it 'assigns value QUEUED' do
      instance.call_status = Freeclimb::CallStatus::QUEUED
      expect(instance.call_status).to eq(Freeclimb::CallStatus::QUEUED)  
    end
    it 'assigns value RINGING' do
      instance.call_status = Freeclimb::CallStatus::RINGING
      expect(instance.call_status).to eq(Freeclimb::CallStatus::RINGING)  
    end
    it 'assigns value IN_PROGRESS' do
      instance.call_status = Freeclimb::CallStatus::IN_PROGRESS
      expect(instance.call_status).to eq(Freeclimb::CallStatus::IN_PROGRESS)  
    end
    it 'assigns value CANCELED' do
      instance.call_status = Freeclimb::CallStatus::CANCELED
      expect(instance.call_status).to eq(Freeclimb::CallStatus::CANCELED)  
    end
    it 'assigns value COMPLETED' do
      instance.call_status = Freeclimb::CallStatus::COMPLETED
      expect(instance.call_status).to eq(Freeclimb::CallStatus::COMPLETED)  
    end
    it 'assigns value FAILED' do
      instance.call_status = Freeclimb::CallStatus::FAILED
      expect(instance.call_status).to eq(Freeclimb::CallStatus::FAILED)  
    end
    it 'assigns value BUSY' do
      instance.call_status = Freeclimb::CallStatus::BUSY
      expect(instance.call_status).to eq(Freeclimb::CallStatus::BUSY)  
    end
    it 'assigns value NO_ANSWER' do
      instance.call_status = Freeclimb::CallStatus::NO_ANSWER
      expect(instance.call_status).to eq(Freeclimb::CallStatus::NO_ANSWER)  
    end
  end

  describe 'test attribute "direction"' do
    it 'assigns value INBOUND' do
      instance.direction = Freeclimb::CallDirection::INBOUND
      expect(instance.direction).to eq(Freeclimb::CallDirection::INBOUND)  
    end
    it 'assigns value OUTBOUND_API' do
      instance.direction = Freeclimb::CallDirection::OUTBOUND_API
      expect(instance.direction).to eq(Freeclimb::CallDirection::OUTBOUND_API)  
    end
    it 'assigns value OUTBOUND_DIAL' do
      instance.direction = Freeclimb::CallDirection::OUTBOUND_DIAL
      expect(instance.direction).to eq(Freeclimb::CallDirection::OUTBOUND_DIAL)  
    end
  end
  describe 'test attribute "conference_id"' do
    it 'should work' do
    
      instance.conference_id = "TEST_STRING"
      expect(instance.conference_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "queue_id"' do
    it 'should work' do
    
      instance.queue_id = "TEST_STRING"
      expect(instance.queue_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "recording_id"' do
    it 'should work' do
    
      instance.recording_id = "TEST_STRING"
      expect(instance.recording_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "recording_url"' do
    it 'should work' do
    
      instance.recording_url = "TEST_STRING"
      expect(instance.recording_url).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "recording_size"' do
    it 'should work' do
    
      instance.recording_size = "TEST_STRING"
      expect(instance.recording_size).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "recording_format"' do
    it 'should work' do
    
      instance.recording_format = "TEST_STRING"
      expect(instance.recording_format).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "recording_duration_sec"' do
    it 'should work' do
    
    
      instance.recording_duration_sec = 1
      expect(instance.recording_duration_sec).to eq(1)
    
    
    
    end
  end


  describe 'test attribute "term_reason"' do
    it 'assigns value FINISH_KEY' do
      instance.term_reason = Freeclimb::RecordUtteranceTermReason::FINISH_KEY
      expect(instance.term_reason).to eq(Freeclimb::RecordUtteranceTermReason::FINISH_KEY)  
    end
    it 'assigns value TIMEOUT' do
      instance.term_reason = Freeclimb::RecordUtteranceTermReason::TIMEOUT
      expect(instance.term_reason).to eq(Freeclimb::RecordUtteranceTermReason::TIMEOUT)  
    end
    it 'assigns value HANGUP' do
      instance.term_reason = Freeclimb::RecordUtteranceTermReason::HANGUP
      expect(instance.term_reason).to eq(Freeclimb::RecordUtteranceTermReason::HANGUP)  
    end
    it 'assigns value MAX_LENGTH' do
      instance.term_reason = Freeclimb::RecordUtteranceTermReason::MAX_LENGTH
      expect(instance.term_reason).to eq(Freeclimb::RecordUtteranceTermReason::MAX_LENGTH)  
    end
  end
  describe 'test attribute "parent_call_id"' do
    it 'should work' do
    
      instance.parent_call_id = "TEST_STRING"
      expect(instance.parent_call_id).to eq("TEST_STRING")  
        
    
    
    end
  end

  describe 'test attribute "privacy_mode"' do
    it 'should work' do
      instance.privacy_mode = false
      expect(instance.privacy_mode).to eq(false)        
        
    
    
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
      expect { instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::RecordWebhook' do
      expect { instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
      expect { instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::RecordWebhook.new(
          
          request_type: "TS",
          
          
          
          
          account_id: "TS",
          
          
          
          
          call_id: "TS",
          
          
          
          
          from: "TS",
          
          
          
          
          to: "TS",
          
          
          
          
          call_status: Freeclimb::CallStatus::QUEUED,
          
          
          
          
          direction: Freeclimb::CallDirection::INBOUND,
          
          
          
          
          conference_id: "TS",
          
          
          
          
          queue_id: "TS",
          
          
          
          
          recording_id: "TS",
          
          
          
          
          recording_url: "TS",
          
          
          
          
          recording_size: "TS",
          
          
          
          
          recording_format: "TS",
          
          
          
          recording_duration_sec: 1,
          
          
          
          
          term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
          
          
          
          
          parent_call_id: "TS",
          
          
          
          privacy_mode: true,
          
          
          
      )
      expect(instance.valid?).to eq(true)
    end


    skip 'checks if properties are invalid' do
      instance = Freeclimb::RecordWebhook.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      instance_1 = Freeclimb::RecordWebhook.new(
          
          request_type: "TS",
          
          
          
          
          account_id: "TS",
          
          
          
          
          call_id: "TS",
          
          
          
          
          from: "TS",
          
          
          
          
          to: "TS",
          
          
          
          
          
          
          call_status: Freeclimb::CallStatus::QUEUED,
          
          
          
          
          direction: Freeclimb::CallDirection::INBOUND,
          
          
          conference_id: "TS",
          
          
          
          
          queue_id: "TS",
          
          
          
          
          recording_id: "TS",
          
          
          
          
          recording_url: "TS",
          
          
          
          
          recording_size: "TS",
          
          
          
          
          recording_format: "TS",
          
          
          
          recording_duration_sec: 1,
          
          
          
          
          
          
          term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
          
          
          parent_call_id: "TS",
          
          
          
          privacy_mode: true,
          
          
          
      )
      instance_2 = Freeclimb::RecordWebhook.new(
          
          request_type: "TS",
          
          
          
          
          account_id: "TS",
          
          
          
          
          call_id: "TS",
          
          
          
          
          from: "TS",
          
          
          
          
          to: "TS",
          
          
          
          
          
          
          call_status: Freeclimb::CallStatus::QUEUED,
          
          
          
          
          direction: Freeclimb::CallDirection::INBOUND,
          
          
          conference_id: "TS",
          
          
          
          
          queue_id: "TS",
          
          
          
          
          recording_id: "TS",
          
          
          
          
          recording_url: "TS",
          
          
          
          
          recording_size: "TS",
          
          
          
          
          recording_format: "TS",
          
          
          
          
          
          recording_duration_sec: 1,
          
          
          
          
          term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
          
          
          parent_call_id: "TS",
          
          
          
          privacy_mode: true,
          
          
          
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::RecordWebhook.new(
          
          request_type: "TS",
          
          
          
          
          account_id: "TS",
          
          
          
          
          call_id: "TS",
          
          
          
          
          from: "TS",
          
          
          
          
          to: "TS",
          
          
          
          
          
          
          call_status: Freeclimb::CallStatus::QUEUED,
          
          
          
          
          direction: Freeclimb::CallDirection::INBOUND,
          
          
          conference_id: "TS",
          
          
          
          
          queue_id: "TS",
          
          
          
          
          recording_id: "TS",
          
          
          
          
          recording_url: "TS",
          
          
          
          
          recording_size: "TS",
          
          
          
          
          recording_format: "TS",
          
          
          
          recording_duration_sec: 2,
          
          
          
          
          
          
          term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
          
          
          parent_call_id: "TS",
          
          
          
          privacy_mode: true,
          
          
          
      )
      instance_2 = Freeclimb::RecordWebhook.new(
          
          request_type: "ST",
          
          
          
          
          account_id: "ST",
          
          
          
          
          call_id: "ST",
          
          
          
          
          from: "ST",
          
          
          
          
          to: "ST",
          
          
          
          
          
          
          call_status: nil,
          
          
          
          
          direction: nil,
          
          
          conference_id: "ST",
          
          
          
          
          queue_id: "ST",
          
          
          
          
          recording_id: "ST",
          
          
          
          
          recording_url: "ST",
          
          
          
          
          recording_size: "ST",
          
          
          
          
          recording_format: "ST",
          
          
          
          recording_duration_sec: 1,
          
          
          
          
          
          
          term_reason: nil,
          
          
          parent_call_id: "ST",
          
          
          
          privacy_mode: false,
          
          
          
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::RecordWebhook.new(
      
      request_type: "TS",
      
      
      
      
      account_id: "TS",
      
      
      
      
      call_id: "TS",
      
      
      
      
      from: "TS",
      
      
      
      
      to: "TS",
      
      
      
      
      call_status: Freeclimb::CallStatus::QUEUED,
      
      
      
      
      direction: Freeclimb::CallDirection::INBOUND,
      
      
      
      
      conference_id: "TS",
      
      
      
      
      queue_id: "TS",
      
      
      
      
      recording_id: "TS",
      
      
      
      
      recording_url: "TS",
      
      
      
      
      recording_size: "TS",
      
      
      
      
      recording_format: "TS",
      
      
      
      recording_duration_sec: 1,
      
      
      
      
      term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
      
      
      
      
      parent_call_id: "TS",
      
      
      
      privacy_mode: true,
      
      
      
    )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )
      instance_2 = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
    )
    it 'deserializes the data of request_type' do
      expect(instance._deserialize("String", instance.request_type)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of from' do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of to' do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end
    
    
    
    
    
    
    it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of queue_id' do
      expect(instance._deserialize("String", instance.queue_id)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of recording_id' do
      expect(instance._deserialize("String", instance.recording_id)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of recording_url' do
      expect(instance._deserialize("String", instance.recording_url)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of recording_size' do
      expect(instance._deserialize("String", instance.recording_size)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of recording_format' do
      expect(instance._deserialize("String", instance.recording_format)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of recording_duration_sec' do
      expect(instance._deserialize("Integer", instance.recording_duration_sec)).to be_a_kind_of(Integer)
    end
    
    
    
    
    it 'deserializes the data of parent_call_id' do
      expect(instance._deserialize("String", instance.parent_call_id)).to be_a_kind_of(String)
    end
    
    
    
    
    it 'deserializes the data of privacy_mode' do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      instance_1 = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )
      instance_2 = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
        
        
        
        account_id: "TS",
        
        
        
        
        call_id: "TS",
        
        
        
        
        from: "TS",
        
        
        
        
        to: "TS",
        
        
        
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
        
        
        
        direction: Freeclimb::CallDirection::INBOUND,
        
        
        
        
        conference_id: "TS",
        
        
        
        
        queue_id: "TS",
        
        
        
        
        recording_id: "TS",
        
        
        
        
        recording_url: "TS",
        
        
        
        
        recording_size: "TS",
        
        
        
        
        recording_format: "TS",
        
        
        
        recording_duration_sec: 1,
        
        
        
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
        
        
        
        parent_call_id: "TS",
        
        
        
        privacy_mode: true,
        
        
        
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::RecordWebhook.new(
        
        request_type: "TS",
        
      
        
        account_id: "TS",
        
      
        
        call_id: "TS",
        
      
        
        from: "TS",
        
      
        
        to: "TS",
        
      
        
        call_status: Freeclimb::CallStatus::QUEUED,
        
      
        
        direction: Freeclimb::CallDirection::INBOUND,
        
      
        
        conference_id: "TS",
        
      
        
        queue_id: "TS",
        
      
        
        recording_id: "TS",
        
      
        
        recording_url: "TS",
        
      
        
        recording_size: "TS",
        
      
        
        recording_format: "TS",
        
      
        recording_duration_sec: 1,
        
      
        
        term_reason: Freeclimb::RecordUtteranceTermReason::FINISH_KEY,
        
      
        
        parent_call_id: "TS",
        
      
        privacy_mode: true,
        
      )
    it 'returns request_type in the form of hash' do
      expect(instance._to_hash(instance.request_type)).to eq(instance.request_type)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns from in the form of hash' do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it 'returns to in the form of hash' do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it 'returns call_status in the form of hash' do
      expect(instance._to_hash(instance.call_status)).to eq(instance.call_status)
    end
    it 'returns direction in the form of hash' do
      expect(instance._to_hash(instance.direction)).to eq(instance.direction)
    end
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
    it 'returns queue_id in the form of hash' do
      expect(instance._to_hash(instance.queue_id)).to eq(instance.queue_id)
    end
    it 'returns recording_id in the form of hash' do
      expect(instance._to_hash(instance.recording_id)).to eq(instance.recording_id)
    end
    it 'returns recording_url in the form of hash' do
      expect(instance._to_hash(instance.recording_url)).to eq(instance.recording_url)
    end
    it 'returns recording_size in the form of hash' do
      expect(instance._to_hash(instance.recording_size)).to eq(instance.recording_size)
    end
    it 'returns recording_format in the form of hash' do
      expect(instance._to_hash(instance.recording_format)).to eq(instance.recording_format)
    end
    it 'returns recording_duration_sec in the form of hash' do
      expect(instance._to_hash(instance.recording_duration_sec)).to eq(instance.recording_duration_sec)
    end
    it 'returns term_reason in the form of hash' do
      expect(instance._to_hash(instance.term_reason)).to eq(instance.term_reason)
    end
    it 'returns parent_call_id in the form of hash' do
      expect(instance._to_hash(instance.parent_call_id)).to eq(instance.parent_call_id)
    end
    it 'returns privacy_mode in the form of hash' do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
  end

end
