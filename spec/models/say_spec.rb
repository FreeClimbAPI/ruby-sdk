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

# Unit tests for Freeclimb::Say
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::Say do
  let(:instance) { Freeclimb::Say.new }

  describe 'test an instance of Say' do
    it 'should create an instance of Say' do
      expect(instance).to be_instance_of(Freeclimb::Say)
    end
  end
  
  describe 'test attribute "text"' do
    it 'should work' do
      instance.text = "TEST_STRING"
      expect(instance.text).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "language"' do
    it 'should work' do
      instance.language = "TEST_STRING"
      expect(instance.language).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "loop"' do
    it 'should work' do
    
    
    instance.loop = 1
    expect(instance.loop).to eq(1) 
    
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
        expect{instance = Freeclimb::Say.new(
          text: "TS",
          
          language: "TS",
          
loop: 1,
          
          privacy_mode: true,
          
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::Say' do
        expect{instance = Freeclimb::Say.new(
          text: "TS",
          language: "TS",
loop: 1,
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::Say.new(
          text: "TS",
          language: "TS",
loop: 1,
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::Say.new(
          text: "TS",
          language: "TS",
loop: 1,
          privacy_mode: true,
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::Say.new(
      text: "TS",
      language: "TS",
loop: 1,
      privacy_mode: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
      )
      instance_2 = Freeclimb::Say.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
    )
    it 'deserializes the data of text' do
      expect(instance._deserialize("String", instance.text)).to be_a_kind_of(String)
    end
    it 'deserializes the data of language' do
      expect(instance._deserialize("String", instance.language)).to be_a_kind_of(String)
    end
    it 'deserializes the data of loop' do
      expect(instance._deserialize("Integer", instance.loop)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of privacy_mode' do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
      )
      instance_2 = Freeclimb::Say.new(
        text: "TS",
        language: "TS",
loop: 1,
        privacy_mode: true,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::Say.new(
        text: "TS",
      
        language: "TS",
      
loop: 1,
      
        privacy_mode: true,
      )
    it 'returns text in the form of hash' do
      expect(instance._to_hash(instance.text)).to eq(instance.text)
    end
    it 'returns language in the form of hash' do
      expect(instance._to_hash(instance.language)).to eq(instance.language)
    end
    it 'returns loop in the form of hash' do
      expect(instance._to_hash(instance.loop)).to eq(instance.loop)
    end
    it 'returns privacy_mode in the form of hash' do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
  end

end
