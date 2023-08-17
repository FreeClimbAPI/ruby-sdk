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

# Unit tests for Freeclimb::LogResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::LogResult do
  let(:instance) { Freeclimb::LogResult.new }

  describe 'test an instance of LogResult' do
    it 'should create an instance of LogResult' do
      expect(instance).to be_instance_of(Freeclimb::LogResult)
    end
  end
  describe 'test attribute "timestamp"' do
    it 'should work' do
      instance.timestamp = 1
      expect(instance.timestamp).to eq(1) 
    end
  end

  describe 'test attribute "level"' do
    it 'assigns value INFO' do
      instance.level = Freeclimb::LogLevel::INFO
      expect(instance.level).to eq(Freeclimb::LogLevel::INFO)  
    end
    it 'assigns value WARNING' do
      instance.level = Freeclimb::LogLevel::WARNING
      expect(instance.level).to eq(Freeclimb::LogLevel::WARNING)  
    end
    it 'assigns value ERROR' do
      instance.level = Freeclimb::LogLevel::ERROR
      expect(instance.level).to eq(Freeclimb::LogLevel::ERROR)  
    end
  end

  describe 'test attribute "request_id"' do
    it 'should work' do
      instance.request_id = "TEST_STRING"
      expect(instance.request_id).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "call_id"' do
    it 'should work' do
      instance.call_id = "TEST_STRING"
      expect(instance.call_id).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "message"' do
    it 'should work' do
      instance.message = "TEST_STRING"
      expect(instance.message).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "metadata"' do
    it 'should work' do
      testObject = Object.new()
      instance.metadata = testObject
      expect(instance.metadata).to eq(testObject)
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: Object.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::LogResult' do
        expect{instance = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: Object.new(),
      )
      expect(instance.valid?).to eq(true)
    end
    it 'checks if properties are invalid' do
      instance = Freeclimb::LogResult.new(
      )
      expect(instance.valid?).to eq(false)
    end
    it 'checks if model is empty' do
      instance = Freeclimb::LogResult.new()
      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: obj,
      )
      instance_2 = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: obj,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::LogResult.new(
          timestamp: 1,
          level: "INFO",
          request_id: "TS",
          account_id: "TS",
          call_id: "TS",
          message: "TS",
          metadata: Object.new(),
      )
      instance_2 = Freeclimb::LogResult.new(
          timestamp: 0,
          level: "WARNING",
          request_id: "ST",
          account_id: "ST",
          call_id: "ST",
          message: "ST",
          metadata: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::LogResult.new(
      timestamp: 1,
      level: "INFO",
      request_id: "TS",
      account_id: "TS",
      call_id: "TS",
      message: "TS",
      metadata: Object.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: Object.new(),
      )
      instance_2 = Freeclimb::LogResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: Object.new(),
    )
    it 'deserializes the data of timestamp' do
      expect(instance._deserialize("Integer", instance.timestamp)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of request_id' do
      expect(instance._deserialize("String", instance.request_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of message' do
      expect(instance._deserialize("String", instance.message)).to be_a_kind_of(String)
    end
    it 'deserializes the data of metadata' do
      expect(instance._deserialize("Object", instance.metadata)).to be_a_kind_of(Object)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: Object.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: Object.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: obj,
      )
      instance_2 = Freeclimb::LogResult.new(
        timestamp: 1,
        level: "INFO",
        request_id: "TS",
        account_id: "TS",
        call_id: "TS",
        message: "TS",
        metadata: obj,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::LogResult.new(
        timestamp: 1,
      
        level: "INFO",
      
        request_id: "TS",
      
        account_id: "TS",
      
        call_id: "TS",
      
        message: "TS",
      
        metadata: Object.new(),
      )
    it 'returns timestamp in the form of hash' do
      expect(instance._to_hash(instance.timestamp)).to eq(instance.timestamp)
    end
    it 'returns level in the form of hash' do
      expect(instance._to_hash(instance.level)).to eq(instance.level)
    end
    it 'returns request_id in the form of hash' do
      expect(instance._to_hash(instance.request_id)).to eq(instance.request_id)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns message in the form of hash' do
      expect(instance._to_hash(instance.message)).to eq(instance.message)
    end
    it 'returns metadata in the form of hash' do
      expect(instance._to_hash(instance.metadata)).to eq(instance.metadata)
    end
  end

end
