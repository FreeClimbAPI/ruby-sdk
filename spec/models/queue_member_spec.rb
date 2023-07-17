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

# Unit tests for Freeclimb::QueueMember
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::QueueMember do
  let(:instance) { Freeclimb::QueueMember.new }

  describe 'test an instance of QueueMember' do
    it 'should create an instance of QueueMember' do
      expect(instance).to be_instance_of(Freeclimb::QueueMember)
    end
  end

  describe 'test attribute "uri"' do
    it 'should work' do
      instance.uri = "TEST_STRING"
      expect(instance.uri).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "call_id"' do
    it 'should work' do
      instance.call_id = "TEST_STRING"
      expect(instance.call_id).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "wait_time"' do
    it 'should work' do
      instance.wait_time = 1
      expect(instance.wait_time).to eq(1) 
    end
  end


  describe 'test attribute "position"' do
    it 'should work' do
      instance.position = 1
      expect(instance.position).to eq(1) 
    end
  end


  describe 'test attribute "date_enqueued"' do
    it 'should work' do
      instance.date_enqueued = "TEST_STRING"
      expect(instance.date_enqueued).to eq("TEST_STRING")  
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::QueueMember' do
        expect{instance = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      instance_1 = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
      )
      instance_2 = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::QueueMember.new(
          uri: "TS",
          call_id: "TS",
          wait_time: 1,
          position: 1,
          date_enqueued: "TS",
      )
      instance_2 = Freeclimb::QueueMember.new(
          uri: "ST",
          call_id: "ST",
          wait_time: 0,
          position: 0,
          date_enqueued: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::QueueMember.new(
      uri: "TS",
      call_id: "TS",
      wait_time: 1,
      position: 1,
      date_enqueued: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::QueueMember.new(
        uri: "TS",
        call_id: "TS",
        wait_time: 1,
        position: 1,
        date_enqueued: "TS",
      )
      instance_2 = Freeclimb::QueueMember.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::QueueMember.new(
        uri: "TS",
        call_id: "TS",
        wait_time: 1,
        position: 1,
        date_enqueued: "TS",
    )
    it 'deserializes the data of uri' do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end
        it 'deserializes the data of call_id' do
      expect(instance._deserialize("String", instance.call_id)).to be_a_kind_of(String)
    end
        it 'deserializes the data of wait_time' do
      expect(instance._deserialize("Integer", instance.wait_time)).to be_a_kind_of(Integer)
    end
        it 'deserializes the data of position' do
      expect(instance._deserialize("Integer", instance.position)).to be_a_kind_of(Integer)
    end
        it 'deserializes the data of date_enqueued' do
      expect(instance._deserialize("String", instance.date_enqueued)).to be_a_kind_of(String)
    end
      end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::QueueMember.new(
        uri: "TS",
        call_id: "TS",
        wait_time: 1,
        position: 1,
        date_enqueued: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::QueueMember.new(
        uri: "TS",
        
        call_id: "TS",
        

        wait_time: 1,

        position: 1,
        date_enqueued: "TS",
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::QueueMember.new(
        uri: "TS",
        call_id: "TS",
        wait_time: 1,
        position: 1,
        date_enqueued: "TS",
      )
      instance_2 = Freeclimb::QueueMember.new(
        uri: "TS",
        call_id: "TS",

        wait_time: 1,
        
        position: 1,
                date_enqueued: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::QueueMember.new(
        uri: "TS",
      
        call_id: "TS",
      
        wait_time: 1,
      
        position: 1,
      
        date_enqueued: "TS",
      )
    it 'returns uri in the form of hash' do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
    it 'returns call_id in the form of hash' do
      expect(instance._to_hash(instance.call_id)).to eq(instance.call_id)
    end
    it 'returns wait_time in the form of hash' do
      expect(instance._to_hash(instance.wait_time)).to eq(instance.wait_time)
    end
    it 'returns position in the form of hash' do
      expect(instance._to_hash(instance.position)).to eq(instance.position)
    end
    it 'returns date_enqueued in the form of hash' do
      expect(instance._to_hash(instance.date_enqueued)).to eq(instance.date_enqueued)
    end
  end

end
