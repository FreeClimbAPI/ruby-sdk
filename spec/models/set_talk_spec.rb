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

# Unit tests for Freeclimb::SetTalk
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SetTalk do
  let(:instance) { Freeclimb::SetTalk.new }

  describe 'test an instance of SetTalk' do
    it 'should create an instance of SetTalk' do
      expect(instance).to be_instance_of(Freeclimb::SetTalk)
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
        expect{instance = Freeclimb::SetTalk.new(
          talk: true,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::SetTalk' do
        expect{instance = Freeclimb::SetTalk.new(
          talk: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::SetTalk.new(
          talk: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::SetTalk.new(
          talk: true,
      )
      expect(instance.valid?).to eq(true)
    end


    # it 'checks if properties are invalid' do
    #   instance = Freeclimb::SetTalk.new(
        
    #   )
    #   expect(instance.valid?).to eq(false)
    # end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::SetTalk.new(
          talk: true,
      )
      instance_2 = Freeclimb::SetTalk.new(
          talk: true,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::SetTalk.new(
          talk: true,
      )
      instance_2 = Freeclimb::SetTalk.new(
          talk: false,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::SetTalk.new(
      talk: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::SetTalk.new(
        talk: true,
      )
      instance_2 = Freeclimb::SetTalk.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::SetTalk.new(
        talk: true,
    )
    it 'deserializes the data of talk' do
      expect(instance._deserialize("Boolean", instance.talk)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::SetTalk.new(
        talk: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::SetTalk.new(
        talk: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::SetTalk.new(
        talk: true,
      )
      instance_2 = Freeclimb::SetTalk.new(
        talk: true,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::SetTalk.new(
        talk: true,
      )
    it 'returns talk in the form of hash' do
      expect(instance._to_hash(instance.talk)).to eq(instance.talk)
    end
  end

end
