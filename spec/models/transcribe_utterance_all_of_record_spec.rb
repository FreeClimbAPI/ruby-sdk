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

# Unit tests for Freeclimb::TranscribeUtteranceAllOfRecord
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::TranscribeUtteranceAllOfRecord do
  let(:instance) { Freeclimb::TranscribeUtteranceAllOfRecord.new }

  describe 'test an instance of TranscribeUtteranceAllOfRecord' do
    it 'should create an instance of TranscribeUtteranceAllOfRecord' do
      expect(instance).to be_instance_of(Freeclimb::TranscribeUtteranceAllOfRecord)
    end
  end
  
  describe 'test attribute "save_recording"' do
    it 'should work' do
      instance.save_recording = false
      expect(instance.save_recording).to eq(false)        
    end
  end

  describe 'test attribute "max_length_sec"' do
    it 'should work' do
    instance.max_length_sec = 60
    expect(instance.max_length_sec).to eq(60) 
    
    
    end
  end

  describe 'test attribute "rcrd_termination_silence_time_ms"' do
    it 'should work' do
    instance.rcrd_termination_silence_time_ms = 3000
    expect(instance.rcrd_termination_silence_time_ms).to eq(3000) 
    
    
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::TranscribeUtteranceAllOfRecord' do
        expect{instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
      )
      instance_2 = Freeclimb::TranscribeUtteranceAllOfRecord.new(
          save_recording: true,
          max_length_sec: 60,
          rcrd_termination_silence_time_ms: 3000,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
      save_recording: true,
      max_length_sec: 60,
      rcrd_termination_silence_time_ms: 3000,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
      )
      instance_2 = Freeclimb::TranscribeUtteranceAllOfRecord.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
    )
    it 'deserializes the data of save_recording' do
      expect(instance._deserialize("Boolean", instance.save_recording)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of max_length_sec' do
      expect(instance._deserialize("Integer", instance.max_length_sec)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of rcrd_termination_silence_time_ms' do
      expect(instance._deserialize("Integer", instance.rcrd_termination_silence_time_ms)).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
      )
      instance_2 = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
        max_length_sec: 60,
        rcrd_termination_silence_time_ms: 3000,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::TranscribeUtteranceAllOfRecord.new(
        save_recording: true,
      
        max_length_sec: 60,
      
        rcrd_termination_silence_time_ms: 3000,
      )
    it 'returns save_recording in the form of hash' do
      expect(instance._to_hash(instance.save_recording)).to eq(instance.save_recording)
    end
    it 'returns max_length_sec in the form of hash' do
      expect(instance._to_hash(instance.max_length_sec)).to eq(instance.max_length_sec)
    end
    it 'returns rcrd_termination_silence_time_ms in the form of hash' do
      expect(instance._to_hash(instance.rcrd_termination_silence_time_ms)).to eq(instance.rcrd_termination_silence_time_ms)
    end
  end

end
