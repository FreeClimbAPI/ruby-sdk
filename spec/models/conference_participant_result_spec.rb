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

# Unit tests for Freeclimb::ConferenceParticipantResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ConferenceParticipantResult do
  let(:instance) { Freeclimb::ConferenceParticipantResult.new }

  describe 'test an instance of ConferenceParticipantResult' do
    it 'should create an instance of ConferenceParticipantResult' do
      expect(instance).to be_instance_of(Freeclimb::ConferenceParticipantResult)
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

  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "conference_id"' do
    it 'should work' do
      instance.conference_id = "TEST_STRING"
      expect(instance.conference_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "call_id"' do
    it 'should work' do
      instance.call_id = "TEST_STRING"
      expect(instance.call_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "talk"' do
    it 'should work' do
      instance.talk = false
      expect(instance.talk).to eq(false)        
        
    end
  end

  describe 'test attribute "listen"' do
    it 'should work' do
      instance.listen = false
      expect(instance.listen).to eq(false)        
        
    end
  end

  describe 'test attribute "start_conf_on_enter"' do
    it 'should work' do
      instance.start_conf_on_enter = false
      expect(instance.start_conf_on_enter).to eq(false)        
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::ConferenceParticipantResult' do
        expect{instance = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
      )
      expect(instance.valid?).to eq(true)
    end

    it 'checks if properties are invalid' do
      instance = Freeclimb::ConferenceParticipantResult.new(
        talk: nil,
        listen: nil,
        start_conf_on_enter: nil,
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
      )
      instance_2 = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::ConferenceParticipantResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
          account_id: "TS",
          conference_id: "TS",
          call_id: "TS",
          talk: true,
          listen: true,
          start_conf_on_enter: true,
      )
      instance_2 = Freeclimb::ConferenceParticipantResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
          account_id: "ST",
          conference_id: "ST",
          call_id: "ST",
          talk: false,
          listen: false,
          start_conf_on_enter: false,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::ConferenceParticipantResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      account_id: "TS",
      conference_id: "TS",
      call_id: "TS",
      talk: true,
      listen: true,
      start_conf_on_enter: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
      )
      instance_2 = Freeclimb::ConferenceParticipantResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
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
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of talk' do
      expect(instance._deserialize("Boolean", instance.talk)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of listen' do
      expect(instance._deserialize("Boolean", instance.listen)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of start_conf_on_enter' do
      expect(instance._deserialize("Boolean", instance.start_conf_on_enter)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
      )
      instance_2 = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        conference_id: "TS",
        call_id: "TS",
        talk: true,
        listen: true,
        start_conf_on_enter: true,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::ConferenceParticipantResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        account_id: "TS",
      
        conference_id: "TS",
      
        call_id: "TS",
      
        talk: true,
      
        listen: true,
      
        start_conf_on_enter: true,
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
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns talk in the form of hash' do
      expect(instance._to_hash(instance.talk)).to eq(instance.talk)
    end
    it 'returns listen in the form of hash' do
      expect(instance._to_hash(instance.listen)).to eq(instance.listen)
    end
    it 'returns start_conf_on_enter in the form of hash' do
      expect(instance._to_hash(instance.start_conf_on_enter)).to eq(instance.start_conf_on_enter)
    end
  end

end
