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

# Unit tests for Freeclimb::BuyIncomingNumberRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::BuyIncomingNumberRequest do
  let(:instance) { Freeclimb::BuyIncomingNumberRequest.new }

  describe 'test an instance of BuyIncomingNumberRequest' do
    it 'should create an instance of BuyIncomingNumberRequest' do
      expect(instance).to be_instance_of(Freeclimb::BuyIncomingNumberRequest)
    end
  end
  
  describe 'test attribute "phone_number"' do
    it 'should work' do
      instance.phone_number = "TEST_STRING"
      expect(instance.phone_number).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "_alias"' do
    it 'should work' do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "application_id"' do
    it 'should work' do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::BuyIncomingNumberRequest' do
        expect{instance = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
      )
      expect(instance.valid?).to eq(true)
    end

    it 'checks if properties are invalid' do
      instance = Freeclimb::BuyIncomingNumberRequest.new(
        
        phone_number: nil,
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
      )
      instance_2 = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "TS",
          _alias: "TS",
          application_id: "TS",
      )
      instance_2 = Freeclimb::BuyIncomingNumberRequest.new(
          phone_number: "ST",
          _alias: "ST",
          application_id: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::BuyIncomingNumberRequest.new(
      phone_number: "TS",
      _alias: "TS",
      application_id: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
      )
      instance_2 = Freeclimb::BuyIncomingNumberRequest.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
    )
    it 'deserializes the data of phone_number' do
      expect(instance._deserialize("String", instance.phone_number)).to be_a_kind_of(String)
    end
    it 'deserializes the data of _alias' do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end
    it 'deserializes the data of application_id' do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
      )
      instance_2 = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
        _alias: "TS",
        application_id: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::BuyIncomingNumberRequest.new(
        phone_number: "TS",
      
        _alias: "TS",
      
        application_id: "TS",
      )
    it 'returns phone_number in the form of hash' do
      expect(instance._to_hash(instance.phone_number)).to eq(instance.phone_number)
    end
    it 'returns _alias in the form of hash' do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it 'returns application_id in the form of hash' do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
  end

end
