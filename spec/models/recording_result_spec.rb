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

# Unit tests for Freeclimb::RecordingResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordingResult do
  let(:instance) { Freeclimb::RecordingResult.new }

  describe 'test an instance of RecordingResult' do
    it 'should create an instance of RecordingResult' do
      expect(instance).to be_instance_of(Freeclimb::RecordingResult)
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

  describe 'test attribute "recording_id"' do
    it 'should work' do
      instance.recording_id = "TEST_STRING"
      expect(instance.recording_id).to eq("TEST_STRING")  
        
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

  describe 'test attribute "duration_sec"' do
    it 'should work' do
    
    
      instance.duration_sec = 1
      expect(instance.duration_sec).to eq(1)
    
    end
  end

  describe 'test attribute "conference_id"' do
    it 'should work' do
      instance.conference_id = "TEST_STRING"
      expect(instance.conference_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::RecordingResult' do
        expect{instance = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
      )
      expect(instance.valid?).to eq(true)
    end

    it 'checks if properties are invalid' do
      instance = Freeclimb::RecordingResult.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
      )
      instance_2 = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 1,
          conference_id: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::RecordingResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
          recording_id: "TS",
          account_id: "TS",
          call_id: "TS",
          duration_sec: 2,
          conference_id: "TS",
      )
      instance_2 = Freeclimb::RecordingResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
          recording_id: "ST",
          account_id: "ST",
          call_id: "ST",
          duration_sec: 1,
          conference_id: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::RecordingResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      recording_id: "TS",
      account_id: "TS",
      call_id: "TS",
      duration_sec: 1,
      conference_id: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
      )
      instance_2 = Freeclimb::RecordingResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
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
    it 'deserializes the data of recording_id' do
      expect(instance._deserialize("String", instance.recording_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of duration_sec' do
      expect(instance._deserialize("Integer", instance.duration_sec)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
      )
      instance_2 = Freeclimb::RecordingResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        recording_id: "TS",
        account_id: "TS",
        call_id: "TS",
        duration_sec: 1,
        conference_id: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::RecordingResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        recording_id: "TS",
      
        account_id: "TS",
      
        call_id: "TS",
      
        duration_sec: 1,
      
        conference_id: "TS",
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
    it 'returns recording_id in the form of hash' do
      expect(instance._to_hash(instance.recording_id)).to eq(instance.recording_id)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns duration_sec in the form of hash' do
      expect(instance._to_hash(instance.duration_sec)).to eq(instance.duration_sec)
    end
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
  end

end
