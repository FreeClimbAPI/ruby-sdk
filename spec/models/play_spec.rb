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

# Unit tests for Freeclimb::Play
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::Play do
  let(:instance) { Freeclimb::Play.new }

  describe 'test an instance of Play' do
    it 'should create an instance of Play' do
      expect(instance).to be_instance_of(Freeclimb::Play)
    end
  end

  describe 'test attribute "file"' do
    it 'should work' do
      instance.file = "TEST_STRING"
      expect(instance.file).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "loop"' do
    it 'should work' do
      instance.loop = 1
      expect(instance.loop).to eq(1) 
    end
  end


  describe 'test attribute "conference_id"' do
    it 'should work' do
      instance.conference_id = "TEST_STRING"
      expect(instance.conference_id).to eq("TEST_STRING")  
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
        expect{instance = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::Play' do
        expect{instance = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      instance_1 = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
      )
      instance_2 = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::Play.new(
          file: "TS",
          loop: 1,
          conference_id: "TS",
          privacy_mode: true,
      )
      instance_2 = Freeclimb::Play.new(
          file: "ST",
          loop: 0,
          conference_id: "ST",
          privacy_mode: false,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::Play.new(
      file: "TS",
      loop: 1,
      conference_id: "TS",
      privacy_mode: true,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::Play.new(
        file: "TS",
        loop: 1,
        conference_id: "TS",
        privacy_mode: true,
      )
      instance_2 = Freeclimb::Play.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::Play.new(
        file: "TS",
        loop: 1,
        conference_id: "TS",
        privacy_mode: true,
    )
    it 'deserializes the data of file' do
      expect(instance._deserialize("String", instance.file)).to be_a_kind_of(String)
    end
        it 'deserializes the data of loop' do
      expect(instance._deserialize("Integer", instance.loop)).to be_a_kind_of(Integer)
    end
        it 'deserializes the data of conference_id' do
      expect(instance._deserialize("String", instance.conference_id)).to be_a_kind_of(String)
    end
            it 'deserializes the data of privacy_mode' do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::Play.new(
        file: "TS",
        loop: 1,
        conference_id: "TS",
        privacy_mode: true,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::Play.new(
        file: "TS",
        

        loop: 1,
        conference_id: "TS",
        

        privacy_mode: true,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::Play.new(
        file: "TS",
        loop: 1,
        conference_id: "TS",
        privacy_mode: true,
      )
      instance_2 = Freeclimb::Play.new(
        file: "TS",

        loop: 1,
                conference_id: "TS",
        privacy_mode: true,
              )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::Play.new(
        file: "TS",
      
        loop: 1,
      
        conference_id: "TS",
      
        privacy_mode: true,
      )
    it 'returns file in the form of hash' do
      expect(instance._to_hash(instance.file)).to eq(instance.file)
    end
    it 'returns loop in the form of hash' do
      expect(instance._to_hash(instance.loop)).to eq(instance.loop)
    end
    it 'returns conference_id in the form of hash' do
      expect(instance._to_hash(instance.conference_id)).to eq(instance.conference_id)
    end
    it 'returns privacy_mode in the form of hash' do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
  end

end
