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

# Unit tests for Freeclimb::RecordUtterance
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordUtterance do
  let(:instance) { Freeclimb::RecordUtterance.new }

  describe 'test an instance of RecordUtterance' do
    it 'should create an instance of RecordUtterance' do
      expect(instance).to be_instance_of(Freeclimb::RecordUtterance)
    end
  end
  
  describe 'test attribute "action_url"' do
    it 'should work' do
      instance.action_url = "TEST_STRING"
      expect(instance.action_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "silence_timeout_ms"' do
    it 'should work' do
    
    
      instance.silence_timeout_ms = 1
      expect(instance.silence_timeout_ms).to eq(1)
    
    end
  end

  describe 'test attribute "finish_on_key"' do
    it 'should work' do
      instance.finish_on_key = "TEST_STRING"
      expect(instance.finish_on_key).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "max_length_sec"' do
    it 'should work' do
    
    
      instance.max_length_sec = 1
      expect(instance.max_length_sec).to eq(1)
    
    end
  end

  describe 'test attribute "play_beep"' do
    it 'should work' do
      instance.play_beep = false
      expect(instance.play_beep).to eq(false)        
        
    end
  end

  describe 'test attribute "auto_start"' do
    it 'should work' do
      instance.auto_start = false
      expect(instance.auto_start).to eq(false)        
        
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
        expect{instance = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::RecordUtterance' do
        expect{instance = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
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
      instance_1 = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
      )
      instance_2 = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 1,
          finish_on_key: "TS",
          max_length_sec: 1,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::RecordUtterance.new(
          action_url: "TS",
          silence_timeout_ms: 2,
          finish_on_key: "TS",
          max_length_sec: 2,
          play_beep: true,
          auto_start: true,
          privacy_mode: true,
      )
      instance_2 = Freeclimb::RecordUtterance.new(
          action_url: "ST",
          silence_timeout_ms: 1,
          finish_on_key: "ST",
          max_length_sec: 1,
          play_beep: false,
          auto_start: false,
          privacy_mode: false,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::RecordUtterance.new(
      action_url: "TS",
      silence_timeout_ms: 1,
      finish_on_key: "TS",
      max_length_sec: 1,
      play_beep: true,
      auto_start: true,
      privacy_mode: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
      )
      instance_2 = Freeclimb::RecordUtterance.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
    )
    it 'deserializes the data of action_url' do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of silence_timeout_ms' do
      expect(instance._deserialize("Integer", instance.silence_timeout_ms)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of finish_on_key' do
      expect(instance._deserialize("String", instance.finish_on_key)).to be_a_kind_of(String)
    end
    it 'deserializes the data of max_length_sec' do
      expect(instance._deserialize("Integer", instance.max_length_sec)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of play_beep' do
      expect(instance._deserialize("Boolean", instance.play_beep)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of auto_start' do
      expect(instance._deserialize("Boolean", instance.auto_start)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of privacy_mode' do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
      )
      instance_2 = Freeclimb::RecordUtterance.new(
        action_url: "TS",
        silence_timeout_ms: 1,
        finish_on_key: "TS",
        max_length_sec: 1,
        play_beep: true,
        auto_start: true,
        privacy_mode: true,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::RecordUtterance.new(
        action_url: "TS",
      
        silence_timeout_ms: 1,
      
        finish_on_key: "TS",
      
        max_length_sec: 1,
      
        play_beep: true,
      
        auto_start: true,
      
        privacy_mode: true,
      )
    it 'returns action_url in the form of hash' do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
    end
    it 'returns silence_timeout_ms in the form of hash' do
      expect(instance._to_hash(instance.silence_timeout_ms)).to eq(instance.silence_timeout_ms)
    end
    it 'returns finish_on_key in the form of hash' do
      expect(instance._to_hash(instance.finish_on_key)).to eq(instance.finish_on_key)
    end
    it 'returns max_length_sec in the form of hash' do
      expect(instance._to_hash(instance.max_length_sec)).to eq(instance.max_length_sec)
    end
    it 'returns play_beep in the form of hash' do
      expect(instance._to_hash(instance.play_beep)).to eq(instance.play_beep)
    end
    it 'returns auto_start in the form of hash' do
      expect(instance._to_hash(instance.auto_start)).to eq(instance.auto_start)
    end
    it 'returns privacy_mode in the form of hash' do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
  end

end
