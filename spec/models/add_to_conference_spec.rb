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

# Unit tests for Freeclimb::AddToConference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AddToConference do
  let(:instance) { Freeclimb::AddToConference.new }

  describe 'test an instance of AddToConference' do
    it 'should create an instance of AddToConference' do
      expect(instance).to be_instance_of(Freeclimb::AddToConference)
    end
  end
  describe 'test attribute "allow_call_control"' do
    it 'should work' do
      instance.allow_call_control = false
      expect(instance.allow_call_control).to eq(false)        
    end
  end

  describe 'test attribute "call_control_sequence"' do
    it 'should work' do
      instance.call_control_sequence = "TEST_STRING"
      expect(instance.call_control_sequence).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "call_control_url"' do
    it 'should work' do
      instance.call_control_url = "TEST_STRING"
      expect(instance.call_control_url).to eq("TEST_STRING")  
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

  describe 'test attribute "leave_conference_url"' do
    it 'should work' do
      instance.leave_conference_url = "TEST_STRING"
      expect(instance.leave_conference_url).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "listen"' do
    it 'should work' do
      instance.listen = false
      expect(instance.listen).to eq(false)        
    end
  end

  describe 'test attribute "notification_url"' do
    it 'should work' do
      instance.notification_url = "TEST_STRING"
      expect(instance.notification_url).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "start_conf_on_enter"' do
    it 'should work' do
      instance.start_conf_on_enter = false
      expect(instance.start_conf_on_enter).to eq(false)        
    end
  end

  describe 'test attribute "talk"' do
    it 'should work' do
      instance.talk = false
      expect(instance.talk).to eq(false)        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::AddToConference' do
        expect{instance = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
      )
      expect(instance.valid?).to eq(true)
    end
    it 'checks if properties are invalid' do
      instance = Freeclimb::AddToConference.new(
          conference_id: nil,
      )
      expect(instance.valid?).to eq(false)
    end
    it 'checks if model is empty' do
      instance = Freeclimb::AddToConference.new()
      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
      )
      instance_2 = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::AddToConference.new(
          allow_call_control: true,
          call_control_sequence: "TS",
          call_control_url: "TS",
          conference_id: "TS",
          call_id: "TS",
          leave_conference_url: "TS",
          listen: true,
          notification_url: "TS",
          start_conf_on_enter: true,
          talk: true,
      )
      instance_2 = Freeclimb::AddToConference.new(
          allow_call_control: false,
          call_control_sequence: "ST",
          call_control_url: "ST",
          conference_id: "ST",
          call_id: "ST",
          leave_conference_url: "ST",
          listen: false,
          notification_url: "ST",
          start_conf_on_enter: false,
          talk: false,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::AddToConference.new(
      allow_call_control: true,
      call_control_sequence: "TS",
      call_control_url: "TS",
      conference_id: "TS",
      call_id: "TS",
      leave_conference_url: "TS",
      listen: true,
      notification_url: "TS",
      start_conf_on_enter: true,
      talk: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
      )
      instance_2 = Freeclimb::AddToConference.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
    )
    it 'deserializes the data of allow_call_control' do
      expect(instance._deserialize("Boolean", instance.allow_call_control)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of call_control_sequence' do
      expect(instance._deserialize("String", instance.call_control_sequence)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_control_url' do
      expect(instance._deserialize("String", instance.call_control_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of leave_conference_url' do
      expect(instance._deserialize("String", instance.leave_conference_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of listen' do
      expect(instance._deserialize("Boolean", instance.listen)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of notification_url' do
      expect(instance._deserialize("String", instance.notification_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of start_conf_on_enter' do
      expect(instance._deserialize("Boolean", instance.start_conf_on_enter)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of talk' do
      expect(instance._deserialize("Boolean", instance.talk)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
      )
      instance_2 = Freeclimb::AddToConference.new(
        allow_call_control: true,
        call_control_sequence: "TS",
        call_control_url: "TS",
        conference_id: "TS",
        call_id: "TS",
        leave_conference_url: "TS",
        listen: true,
        notification_url: "TS",
        start_conf_on_enter: true,
        talk: true,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::AddToConference.new(
        allow_call_control: true,
      
        call_control_sequence: "TS",
      
        call_control_url: "TS",
      
        conference_id: "TS",
      
        call_id: "TS",
      
        leave_conference_url: "TS",
      
        listen: true,
      
        notification_url: "TS",
      
        start_conf_on_enter: true,
      
        talk: true,
      )
    it 'returns allow_call_control in the form of hash' do
      expect(instance._to_hash(instance.allow_call_control)).to eq(instance.allow_call_control)
    end
    it 'returns call_control_sequence in the form of hash' do
      expect(instance._to_hash(instance.call_control_sequence)).to eq(instance.call_control_sequence)
    end
    it 'returns call_control_url in the form of hash' do
      expect(instance._to_hash(instance.call_control_url)).to eq(instance.call_control_url)
    end
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns leave_conference_url in the form of hash' do
      expect(instance._to_hash(instance.leave_conference_url)).to eq(instance.leave_conference_url)
    end
    it 'returns listen in the form of hash' do
      expect(instance._to_hash(instance.listen)).to eq(instance.listen)
    end
    it 'returns notification_url in the form of hash' do
      expect(instance._to_hash(instance.notification_url)).to eq(instance.notification_url)
    end
    it 'returns start_conf_on_enter in the form of hash' do
      expect(instance._to_hash(instance.start_conf_on_enter)).to eq(instance.start_conf_on_enter)
    end
    it 'returns talk in the form of hash' do
      expect(instance._to_hash(instance.talk)).to eq(instance.talk)
    end
  end

end
