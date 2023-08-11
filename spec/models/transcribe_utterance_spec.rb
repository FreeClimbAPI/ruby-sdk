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

# Unit tests for Freeclimb::TranscribeUtterance
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::TranscribeUtterance do
  let(:instance) { Freeclimb::TranscribeUtterance.new }

  describe 'test an instance of TranscribeUtterance' do
    it 'should create an instance of TranscribeUtterance' do
      expect(instance).to be_instance_of(Freeclimb::TranscribeUtterance)
    end
  end
  describe 'test attribute "action_url"' do
    it 'should work' do
      instance.action_url = "TEST_STRING"
      expect(instance.action_url).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "play_beep"' do
    it 'should work' do
      instance.play_beep = false
      expect(instance.play_beep).to eq(false)        
    end
  end

  describe 'test attribute "record"' do
    it 'should work' do
      instance.record = Freeclimb::TranscribeUtteranceRecord.new(
        save_recording: true,
        max_length_sec: 1,
        rcrd_termination_silence_time_ms: 1,
      )
      expect(instance.record).to be_instance_of(Freeclimb::TranscribeUtteranceRecord)
    end
  end

  describe 'test attribute "privacy_for_logging"' do
    it 'should work' do
      instance.privacy_for_logging = false
      expect(instance.privacy_for_logging).to eq(false)        
    end
  end

  describe 'test attribute "privacy_for_recording"' do
    it 'should work' do
      instance.privacy_for_recording = false
      expect(instance.privacy_for_recording).to eq(false)        
    end
  end

  describe 'test attribute "prompts"' do
    it 'should work' do
      instance.prompts = ["ELEMENT_1", "ELEMENT_2"]
      expect(instance.prompts).to eq(["ELEMENT_1", "ELEMENT_2"]) 
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: Array.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::TranscribeUtterance' do
        expect{instance = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: Array.new(),
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: [],
      )
      instance_2 = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: [],
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::TranscribeUtterance.new(
          action_url: "TS",
          play_beep: true,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 2,
            rcrd_termination_silence_time_ms: 2,
          ),
          privacy_for_logging: true,
          privacy_for_recording: true,
          prompts: [],
      )
      instance_2 = Freeclimb::TranscribeUtterance.new(
          action_url: "ST",
          play_beep: false,
          record: Freeclimb::TranscribeUtteranceRecord.new(
            save_recording: true,
            max_length_sec: 1,
            rcrd_termination_silence_time_ms: 1,
          ),
          privacy_for_logging: false,
          privacy_for_recording: false,
          prompts: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::TranscribeUtterance.new(
      action_url: "TS",
      play_beep: true,
      record: Freeclimb::TranscribeUtteranceRecord.new(
        save_recording: true,
        max_length_sec: 1,
        rcrd_termination_silence_time_ms: 1,
      ),
      privacy_for_logging: true,
      privacy_for_recording: true,
      prompts: Array.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
      )
      instance_2 = Freeclimb::TranscribeUtterance.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
    )
    it 'deserializes the data of action_url' do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of play_beep' do
      expect(instance._deserialize("Boolean", instance.play_beep)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of record' do
      expect(instance._deserialize("Object", instance.record)).to be_a_kind_of(Freeclimb::TranscribeUtteranceRecord)
    end
    it 'deserializes the data of privacy_for_logging' do
      expect(instance._deserialize("Boolean", instance.privacy_for_logging)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of privacy_for_recording' do
      expect(instance._deserialize("Boolean", instance.privacy_for_recording)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of prompts' do
      expect(instance._deserialize("Array<Object>", instance.prompts)).to be_a_kind_of(Array)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
      )
      instance_2 = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
        play_beep: true,
        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
        privacy_for_logging: true,
        privacy_for_recording: true,
        prompts: Array.new(),
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::TranscribeUtterance.new(
        action_url: "TS",
      
        play_beep: true,

        record: Freeclimb::TranscribeUtteranceRecord.new(
          save_recording: true,
          max_length_sec: 1,
          rcrd_termination_silence_time_ms: 1,
        ),
      
        privacy_for_logging: true,
      
        privacy_for_recording: true,
      
        prompts: Array.new(),
      )
    it 'returns action_url in the form of hash' do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
    end
    it 'returns play_beep in the form of hash' do
      expect(instance._to_hash(instance.play_beep)).to eq(instance.play_beep)
    end
    it 'returns record in the form of hash' do
      expect(instance._to_hash(instance.record)).to eq({:maxLengthSec=>1, :rcrdTerminationSilenceTimeMs=>1, :saveRecording=>true})
    end
    it 'returns privacy_for_logging in the form of hash' do
      expect(instance._to_hash(instance.privacy_for_logging)).to eq(instance.privacy_for_logging)
    end
    it 'returns privacy_for_recording in the form of hash' do
      expect(instance._to_hash(instance.privacy_for_recording)).to eq(instance.privacy_for_recording)
    end
    it 'returns prompts in the form of hash' do
      expect(instance._to_hash(instance.prompts)).to eq(instance.prompts)
    end
  end

end
