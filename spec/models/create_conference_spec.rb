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

# Unit tests for Freeclimb::CreateConference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::CreateConference do
  let(:instance) { Freeclimb::CreateConference.new }

  describe 'test an instance of CreateConference' do
    it 'should create an instance of CreateConference' do
      expect(instance).to be_instance_of(Freeclimb::CreateConference)
    end
  end
  
  describe 'test attribute "action_url"' do
    it 'should work' do
      instance.action_url = "TEST_STRING"
      expect(instance.action_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "_alias"' do
    it 'should work' do
      instance._alias = false
      expect(instance._alias).to eq(false)        
        
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

  describe 'test attribute "status_callback_url"' do
    it 'should work' do
      instance.status_callback_url = "TEST_STRING"
      expect(instance.status_callback_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "wait_url"' do
    it 'should work' do
      instance.wait_url = "TEST_STRING"
      expect(instance.wait_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::CreateConference' do
        expect{instance = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
      )
      expect(instance.valid?).to eq(true)
    end


    # it 'checks if properties are invalid' do
    #   instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        
    #   )
    #   expect(instance.valid?).to eq(false)
    # end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
      )
      instance_2 = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::CreateConference.new(
          action_url: "TS",
          _alias: true,
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          record: true,
          status_callback_url: "TS",
          wait_url: "TS",
      )
      instance_2 = Freeclimb::CreateConference.new(
          action_url: "ST",
          _alias: false,
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "NEVER",
          record: false,
          status_callback_url: "ST",
          wait_url: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::CreateConference.new(
      action_url: "TS",
      _alias: true,
      play_beep: "ALWAYS",
      record: true,
      status_callback_url: "TS",
      wait_url: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
      )
      instance_2 = Freeclimb::CreateConference.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
    )
    it 'deserializes the data of action_url' do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of _alias' do
      expect(instance._deserialize("Boolean", instance._alias)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of record' do
      expect(instance._deserialize("Boolean", instance.record)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of status_callback_url' do
      expect(instance._deserialize("String", instance.status_callback_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of wait_url' do
      expect(instance._deserialize("String", instance.wait_url)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
      )
      instance_2 = Freeclimb::CreateConference.new(
        action_url: "TS",
        _alias: true,
        play_beep: "ALWAYS",
        record: true,
        status_callback_url: "TS",
        wait_url: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::CreateConference.new(
        action_url: "TS",
      
        _alias: true,
      
        play_beep: "ALWAYS",
      
        record: true,
      
        status_callback_url: "TS",
      
        wait_url: "TS",
      )
    it 'returns action_url in the form of hash' do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
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
    it 'returns status_callback_url in the form of hash' do
      expect(instance._to_hash(instance.status_callback_url)).to eq(instance.status_callback_url)
    end
    it 'returns wait_url in the form of hash' do
      expect(instance._to_hash(instance.wait_url)).to eq(instance.wait_url)
    end
  end

end
