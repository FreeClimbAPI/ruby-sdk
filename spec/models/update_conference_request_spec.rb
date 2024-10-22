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

# Unit tests for Freeclimb::UpdateConferenceRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::UpdateConferenceRequest do
  let(:instance) { Freeclimb::UpdateConferenceRequest.new }

  describe 'test an instance of UpdateConferenceRequest' do
    it 'should create an instance of UpdateConferenceRequest' do
      expect(instance).to be_instance_of(Freeclimb::UpdateConferenceRequest)
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


  describe 'test attribute "status"' do
    it 'assigns value EMPTY' do
      instance.status = Freeclimb::UpdateConferenceRequestStatus::EMPTY
      expect(instance.status).to eq(Freeclimb::UpdateConferenceRequestStatus::EMPTY)  
    end
    it 'assigns value TERMINATED' do
      instance.status = Freeclimb::UpdateConferenceRequestStatus::TERMINATED
      expect(instance.status).to eq(Freeclimb::UpdateConferenceRequestStatus::TERMINATED)  
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: "ALWAYS",
          status: "EMPTY",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::UpdateConferenceRequest' do
        expect{instance = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: "ALWAYS",
          status: "EMPTY",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: "ALWAYS",
          status: "EMPTY",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: "ALWAYS",
          status: "EMPTY",
      )
      expect(instance.valid?).to eq(true)
    end


    skip 'checks if properties are invalid' do
      instance = Freeclimb::UpdateConferenceRequest.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          status: Freeclimb::UpdateConferenceRequestStatus.new(),
          status: "EMPTY",
      )
      instance_2 = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          status: Freeclimb::UpdateConferenceRequestStatus.new(),
          status: "EMPTY",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::UpdateConferenceRequest.new(
          _alias: "TS",
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "ALWAYS",
          status: Freeclimb::UpdateConferenceRequestStatus.new(),
          status: "EMPTY",
      )
      instance_2 = Freeclimb::UpdateConferenceRequest.new(
          _alias: "ST",
          play_beep: Freeclimb::PlayBeep.new(),
          play_beep: "NEVER",
          status: Freeclimb::UpdateConferenceRequestStatus.new(),
          status: "TERMINATED",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::UpdateConferenceRequest.new(
      _alias: "TS",
      play_beep: "ALWAYS",
      status: "EMPTY",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
      )
      instance_2 = Freeclimb::UpdateConferenceRequest.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
    )
    it 'deserializes the data of _alias' do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
      )
      instance_2 = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
        play_beep: "ALWAYS",
        status: "EMPTY",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::UpdateConferenceRequest.new(
        _alias: "TS",
      
        play_beep: "ALWAYS",
      
        status: "EMPTY",
      )
    it 'returns _alias in the form of hash' do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it 'returns play_beep in the form of hash' do
      expect(instance._to_hash(instance.play_beep)).to eq(instance.play_beep)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
  end

end
