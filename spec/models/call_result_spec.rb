=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Freeclimb::CallResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::CallResult do
  let(:instance) { Freeclimb::CallResult.new }

  describe 'test an instance of CallResult' do
    it 'should create an instance of CallResult' do
      expect(instance).to be_instance_of(Freeclimb::CallResult)
    end
  end
  
  describe 'test attribute "uri"' do
    it 'should work' do
      instance.uri = "TEST_STRING"
      expect(instance.uri).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "date_created"' do
    it 'should work' do
      instance.date_created = "TEST_STRING"
      expect(instance.date_created).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "date_updated"' do
    it 'should work' do
      instance.date_updated = "TEST_STRING"
      expect(instance.date_updated).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "revision"' do
    it 'should work' do
    
    
      instance.revision = 1
      expect(instance.revision).to eq(1)
    
    end
  end

  describe 'test attribute "call_id"' do
    it 'should work' do
      instance.call_id = "TEST_STRING"
      expect(instance.call_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "parent_call_id"' do
    it 'should work' do
      instance.parent_call_id = "TEST_STRING"
      expect(instance.parent_call_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
        
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

  describe 'test attribute "phone_number_id"' do
    it 'should work' do
      instance.phone_number_id = "TEST_STRING"
      expect(instance.phone_number_id).to eq("TEST_STRING")  
        
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

  describe 'test attribute "start_time"' do
    it 'should work' do
      instance.start_time = "TEST_STRING"
      expect(instance.start_time).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "connect_time"' do
    it 'should work' do
      instance.connect_time = "TEST_STRING"
      expect(instance.connect_time).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "end_time"' do
    it 'should work' do
      instance.end_time = "TEST_STRING"
      expect(instance.end_time).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "duration"' do
    it 'should work' do
    
    
      instance.duration = 1
      expect(instance.duration).to eq(1)
    
    end
  end

  describe 'test attribute "connect_duration"' do
    it 'should work' do
    
    
      instance.connect_duration = 1
      expect(instance.connect_duration).to eq(1)
    
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


  describe 'test attribute "answered_by"' do
    it 'assigns value HUMAN' do
      instance.answered_by = Freeclimb::AnsweredBy::HUMAN
      expect(instance.answered_by).to eq(Freeclimb::AnsweredBy::HUMAN)  
    end
    it 'assigns value MACHINE' do
      instance.answered_by = Freeclimb::AnsweredBy::MACHINE
      expect(instance.answered_by).to eq(Freeclimb::AnsweredBy::MACHINE)  
    end
  end

  describe 'test attribute "subresource_uris"' do
    it 'should work' do
        
      testObject = Object.new()
      instance.subresource_uris = testObject
      expect(instance.subresource_uris).to eq(testObject)
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: "INBOUND",
          answered_by: "HUMAN",
          subresource_uris: Object.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::CallResult' do
        expect{instance = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: "INBOUND",
          answered_by: "HUMAN",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: "INBOUND",
          answered_by: "HUMAN",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: "INBOUND",
          answered_by: "HUMAN",
          subresource_uris: Object.new(),
      )
      expect(instance.valid?).to eq(true)
    end


    # it 'checks if properties are invalid' do
    #   instance = Freeclimb::CallResult.new(
        
    #   )
    #   expect(instance.valid?).to eq(false)
    # end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: Freeclimb::CallStatus.new(),
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: Freeclimb::CallDirection.new(),
          direction: "INBOUND",
          answered_by: Freeclimb::AnsweredBy.new(),
          answered_by: "HUMAN",
          subresource_uris: obj,
      )
      instance_2 = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: Freeclimb::CallStatus.new(),
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 1,
          connect_duration: 1,
          direction: Freeclimb::CallDirection.new(),
          direction: "INBOUND",
          answered_by: Freeclimb::AnsweredBy.new(),
          answered_by: "HUMAN",
          subresource_uris: obj,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::CallResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
          call_id: "TS",
          parent_call_id: "TS",
          account_id: "TS",
          from: "TS",
          to: "TS",
          phone_number_id: "TS",
          call_status: Freeclimb::CallStatus.new(),
          call_status: "QUEUED",
          start_time: "TS",
          connect_time: "TS",
          end_time: "TS",
          duration: 2,
          connect_duration: 2,
          direction: Freeclimb::CallDirection.new(),
          direction: "INBOUND",
          answered_by: Freeclimb::AnsweredBy.new(),
          answered_by: "HUMAN",
          subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::CallResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
          call_id: "ST",
          parent_call_id: "ST",
          account_id: "ST",
          from: "ST",
          to: "ST",
          phone_number_id: "ST",
          call_status: Freeclimb::CallStatus.new(),
          call_status: "RINGING",
          start_time: "ST",
          connect_time: "ST",
          end_time: "ST",
          duration: 1,
          connect_duration: 1,
          direction: Freeclimb::CallDirection.new(),
          direction: "OUTBOUND_API",
          answered_by: Freeclimb::AnsweredBy.new(),
          answered_by: "MACHINE",
          subresource_uris: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::CallResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      call_id: "TS",
      parent_call_id: "TS",
      account_id: "TS",
      from: "TS",
      to: "TS",
      phone_number_id: "TS",
      call_status: "QUEUED",
      start_time: "TS",
      connect_time: "TS",
      end_time: "TS",
      duration: 1,
      connect_duration: 1,
      direction: "INBOUND",
      answered_by: "HUMAN",
      subresource_uris: Object.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::CallResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: Object.new(),
    )
    it 'deserializes the data of uri' do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end
    it 'deserializes the data of date_created' do
      expect(instance._deserialize("String", instance.date_created)).to be_a_kind_of(String)
    end
    it 'deserializes the data of date_updated' do
      expect(instance._deserialize("String", instance.date_updated)).to be_a_kind_of(String)
    end
    it 'deserializes the data of revision' do
      expect(instance._deserialize("Integer", instance.revision)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of parent_call_id' do
      expect(instance._deserialize("String", instance.parent_call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of from' do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end
    it 'deserializes the data of to' do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end
    it 'deserializes the data of phone_number_id' do
      expect(instance._deserialize("String", instance.phone_number_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of start_time' do
      expect(instance._deserialize("String", instance.start_time)).to be_a_kind_of(String)
    end
    it 'deserializes the data of connect_time' do
      expect(instance._deserialize("String", instance.connect_time)).to be_a_kind_of(String)
    end
    it 'deserializes the data of end_time' do
      expect(instance._deserialize("String", instance.end_time)).to be_a_kind_of(String)
    end
    it 'deserializes the data of duration' do
      expect(instance._deserialize("Integer", instance.duration)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of connect_duration' do
      expect(instance._deserialize("Integer", instance.connect_duration)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of subresource_uris' do
      expect(instance._deserialize("Object", instance.subresource_uris)).to be_a_kind_of(Object)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: Object.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: Object.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: obj,
      )
      instance_2 = Freeclimb::CallResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        call_id: "TS",
        parent_call_id: "TS",
        account_id: "TS",
        from: "TS",
        to: "TS",
        phone_number_id: "TS",
        call_status: "QUEUED",
        start_time: "TS",
        connect_time: "TS",
        end_time: "TS",
        duration: 1,
        connect_duration: 1,
        direction: "INBOUND",
        answered_by: "HUMAN",
        subresource_uris: obj,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::CallResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        call_id: "TS",
      
        parent_call_id: "TS",
      
        account_id: "TS",
      
        from: "TS",
      
        to: "TS",
      
        phone_number_id: "TS",
      
        call_status: "QUEUED",
      
        start_time: "TS",
      
        connect_time: "TS",
      
        end_time: "TS",
      
        duration: 1,
      
        connect_duration: 1,
      
        direction: "INBOUND",
      
        answered_by: "HUMAN",
      
        subresource_uris: Object.new(),
      )
    it 'returns uri in the form of hash' do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
    it 'returns date_created in the form of hash' do
      expect(instance._to_hash(instance.date_created)).to eq(instance.date_created)
    end
    it 'returns date_updated in the form of hash' do
      expect(instance._to_hash(instance.date_updated)).to eq(instance.date_updated)
    end
    it 'returns revision in the form of hash' do
      expect(instance._to_hash(instance.revision)).to eq(instance.revision)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns parent_call_id in the form of hash' do
      expect(instance._to_hash(instance.parent_call_id)).to eq(instance.parent_call_id)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns from in the form of hash' do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it 'returns to in the form of hash' do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it 'returns phone_number_id in the form of hash' do
      expect(instance._to_hash(instance.phone_number_id)).to eq(instance.phone_number_id)
    end
    it 'returns call_status in the form of hash' do
      expect(instance._to_hash(instance.call_status)).to eq(instance.call_status)
    end
    it 'returns start_time in the form of hash' do
      expect(instance._to_hash(instance.start_time)).to eq(instance.start_time)
    end
    it 'returns connect_time in the form of hash' do
      expect(instance._to_hash(instance.connect_time)).to eq(instance.connect_time)
    end
    it 'returns end_time in the form of hash' do
      expect(instance._to_hash(instance.end_time)).to eq(instance.end_time)
    end
    it 'returns duration in the form of hash' do
      expect(instance._to_hash(instance.duration)).to eq(instance.duration)
    end
    it 'returns connect_duration in the form of hash' do
      expect(instance._to_hash(instance.connect_duration)).to eq(instance.connect_duration)
    end
    it 'returns direction in the form of hash' do
      expect(instance._to_hash(instance.direction)).to eq(instance.direction)
    end
    it 'returns answered_by in the form of hash' do
      expect(instance._to_hash(instance.answered_by)).to eq(instance.answered_by)
    end
    it 'returns subresource_uris in the form of hash' do
      expect(instance._to_hash(instance.subresource_uris)).to eq(instance.subresource_uris)
    end
  end

end
