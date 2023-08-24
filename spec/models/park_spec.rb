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

# Unit tests for Freeclimb::Park
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::Park do
  let(:instance) { Freeclimb::Park.new }

  describe 'test an instance of Park' do
    it 'should create an instance of Park' do
      expect(instance).to be_instance_of(Freeclimb::Park)
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

  describe 'test attribute "notification_url"' do
    it 'should work' do
      instance.notification_url = "TEST_STRING"
      expect(instance.notification_url).to eq("TEST_STRING")  
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::Park' do
        expect{instance = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
      )
      expect(instance.valid?).to eq(true)
    end
    it 'checks if properties are invalid' do
      instance = Freeclimb::Park.new(
          wait_url: nil,
          action_url: nil,
      )
      expect(instance.valid?).to eq(false)
    end
    it 'checks if model is empty' do
      instance = Freeclimb::Park.new()
      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
      )
      instance_2 = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::Park.new(
          wait_url: "TS",
          action_url: "TS",
          notification_url: "TS",
      )
      instance_2 = Freeclimb::Park.new(
          wait_url: "ST",
          action_url: "ST",
          notification_url: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::Park.new(
      wait_url: "TS",
      action_url: "TS",
      notification_url: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
      )
      instance_2 = Freeclimb::Park.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
    )
    it 'deserializes the data of wait_url' do
      expect(instance._deserialize("String", instance.wait_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of action_url' do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of notification_url' do
      expect(instance._deserialize("String", instance.notification_url)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
      )
      instance_2 = Freeclimb::Park.new(
        wait_url: "TS",
        action_url: "TS",
        notification_url: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::Park.new(
        wait_url: "TS",
      
        action_url: "TS",
      
        notification_url: "TS",
      )
    it 'returns wait_url in the form of hash' do
      expect(instance._to_hash(instance.wait_url)).to eq(instance.wait_url)
    end
    it 'returns action_url in the form of hash' do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
    end
    it 'returns notification_url in the form of hash' do
      expect(instance._to_hash(instance.notification_url)).to eq(instance.notification_url)
    end
  end

end
