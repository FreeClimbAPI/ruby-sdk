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

# Unit tests for Freeclimb::ConferenceResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ConferenceResult do
  let(:instance) { Freeclimb::ConferenceResult.new }

  describe 'test an instance of ConferenceResult' do
    it 'should create an instance of ConferenceResult' do
      expect(instance).to be_instance_of(Freeclimb::ConferenceResult)
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


  describe 'test attribute "conference_id"' do
    it 'should work' do
      instance.conference_id = "TEST_STRING"
      expect(instance.conference_id).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "_alias"' do
    it 'should work' do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "play_beep"' do
    it 'assigns value ALWAYS' do
      instance.play_beep = Freeclimb::PlayBeep::ALWAYS
      expect(instance.play_beep).to eq(Freeclimb::PlayBeep::ALWAYS)  
    end
    it 'assigns value NEVER' do
      instance.play_beep = Freeclimb::PlayBeep::NEVER
      expect(instance.play_beep).to eq(Freeclimb::PlayBeep::NEVER)  
    end
    it 'assigns value ENTRY_ONLY' do
      instance.play_beep = Freeclimb::PlayBeep::ENTRY_ONLY
      expect(instance.play_beep).to eq(Freeclimb::PlayBeep::ENTRY_ONLY)  
    end
    it 'assigns value EXIT_ONLY' do
      instance.play_beep = Freeclimb::PlayBeep::EXIT_ONLY
      expect(instance.play_beep).to eq(Freeclimb::PlayBeep::EXIT_ONLY)  
    end
  end


  describe 'test attribute "record"' do
    it 'should work' do
      instance.record = false
      expect(instance.record).to eq(false)        
    end
  end

  describe 'test attribute "status"' do
    it 'assigns value EMPTY' do
      instance.status = Freeclimb::ConferenceStatus::EMPTY
      expect(instance.status).to eq(Freeclimb::ConferenceStatus::EMPTY)  
    end
    it 'assigns value POPULATED' do
      instance.status = Freeclimb::ConferenceStatus::POPULATED
      expect(instance.status).to eq(Freeclimb::ConferenceStatus::POPULATED)  
    end
    it 'assigns value IN_PROGRESS' do
      instance.status = Freeclimb::ConferenceStatus::IN_PROGRESS
      expect(instance.status).to eq(Freeclimb::ConferenceStatus::IN_PROGRESS)  
    end
    it 'assigns value TERMINATED' do
      instance.status = Freeclimb::ConferenceStatus::TERMINATED
      expect(instance.status).to eq(Freeclimb::ConferenceStatus::TERMINATED)  
    end
  end


  describe 'test attribute "wait_url"' do
    it 'should work' do
      instance.wait_url = "TEST_STRING"
      expect(instance.wait_url).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "action_url"' do
    it 'should work' do
      instance.action_url = "TEST_STRING"
      expect(instance.action_url).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "status_callback_url"' do
    it 'should work' do
      instance.status_callback_url = "TEST_STRING"
      expect(instance.status_callback_url).to eq("TEST_STRING")  
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
        expect{instance = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: Object.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::ConferenceResult' do
        expect{instance = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: Object.new(),
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      instance_1 = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: nil,
      )
      instance_2 = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::ConferenceResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          conference_id: "TS",
          account_id: "TS",
          _alias: "TS",
          play_beep: "ALWAYS",
          record: true,
          status: "EMPTY",
          wait_url: "TS",
          action_url: "TS",
          status_callback_url: "TS",
          subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::ConferenceResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 0,
          conference_id: "ST",
          account_id: "ST",
          _alias: "ST",
          play_beep: "NEVER",
          record: false,
          status: "POPULATED",
          wait_url: "ST",
          action_url: "ST",
          status_callback_url: "ST",
          subresource_uris: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::ConferenceResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      conference_id: "TS",
      account_id: "TS",
      _alias: "TS",
      play_beep: "ALWAYS",
      record: true,
      status: "EMPTY",
      wait_url: "TS",
      action_url: "TS",
      status_callback_url: "TS",
      subresource_uris: Object.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::ConferenceResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        conference_id: "TS",
        account_id: "TS",
        _alias: "TS",
        play_beep: "ALWAYS",
        record: true,
        status: "EMPTY",
        wait_url: "TS",
        action_url: "TS",
        status_callback_url: "TS",
        subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::ConferenceResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::ConferenceResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        conference_id: "TS",
        account_id: "TS",
        _alias: "TS",
        play_beep: "ALWAYS",
        record: true,
        status: "EMPTY",
        wait_url: "TS",
        action_url: "TS",
        status_callback_url: "TS",
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
        it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
        it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
        it 'deserializes the data of _alias' do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end
                it 'deserializes the data of record' do
      expect(instance._deserialize("Boolean", instance.record)).to be_a_kind_of(TrueClass)
    end
        it 'deserializes the data of wait_url' do
      expect(instance._deserialize("String", instance.wait_url)).to be_a_kind_of(String)
    end
        it 'deserializes the data of action_url' do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end
        it 'deserializes the data of status_callback_url' do
      expect(instance._deserialize("String", instance.status_callback_url)).to be_a_kind_of(String)
    end
        it 'deserializes the data of subresource_uris' do
      expect(instance._deserialize("Object", instance.subresource_uris)).to be_a_kind_of(Object)
    end
      end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::ConferenceResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        conference_id: "TS",
        account_id: "TS",
        _alias: "TS",
        play_beep: "ALWAYS",
        record: true,
        status: "EMPTY",
        wait_url: "TS",
        action_url: "TS",
        status_callback_url: "TS",
        subresource_uris: Object.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::ConferenceResult.new(
        uri: "TS",
        
        date_created: "TS",
        
        date_updated: "TS",
        

        revision: 1,
        conference_id: "TS",
        
        account_id: "TS",
        
        _alias: "TS",
        

        play_beep: "ALWAYS",

        record: true,

        status: "EMPTY",
        wait_url: "TS",
        
        action_url: "TS",
        
        status_callback_url: "TS",
        

        subresource_uris: Object.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::ConferenceResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        conference_id: "TS",
        account_id: "TS",
        _alias: "TS",
        play_beep: "ALWAYS",
        record: true,
        status: "EMPTY",
        wait_url: "TS",
        action_url: "TS",
        status_callback_url: "TS",
        subresource_uris: obj,
      )
      instance_2 = Freeclimb::ConferenceResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",

        revision: 1,
                conference_id: "TS",
        account_id: "TS",
        _alias: "TS",

        play_beep: "ALWAYS",
                record: true,
        
        status: "EMPTY",
                wait_url: "TS",
        action_url: "TS",
        status_callback_url: "TS",

        subresource_uris: obj,
              )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::ConferenceResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        conference_id: "TS",
      
        account_id: "TS",
      
        _alias: "TS",
      
        play_beep: "ALWAYS",
      
        record: true,
      
        status: "EMPTY",
      
        wait_url: "TS",
      
        action_url: "TS",
      
        status_callback_url: "TS",
      
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
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns _alias in the form of hash' do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it 'returns play_beep in the form of hash' do
      expect(instance._to_hash(instance.play_beep)).to eq(instance.play_beep)
    end
    it 'returns record in the form of hash' do
      expect(instance._to_hash(instance.record)).to eq(instance.record)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
    it 'returns wait_url in the form of hash' do
      expect(instance._to_hash(instance.wait_url)).to eq(instance.wait_url)
    end
    it 'returns action_url in the form of hash' do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
    end
    it 'returns status_callback_url in the form of hash' do
      expect(instance._to_hash(instance.status_callback_url)).to eq(instance.status_callback_url)
    end
    it 'returns subresource_uris in the form of hash' do
      expect(instance._to_hash(instance.subresource_uris)).to eq(instance.subresource_uris)
    end
  end

end
