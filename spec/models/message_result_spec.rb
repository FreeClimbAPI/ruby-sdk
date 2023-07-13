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

# Unit tests for Freeclimb::MessageResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MessageResult do
  let(:instance) { Freeclimb::MessageResult.new }

  describe 'test an instance of MessageResult' do
    it 'should create an instance of MessageResult' do
      expect(instance).to be_instance_of(Freeclimb::MessageResult)
    end
  end

  describe 'test attribute "uri"' do
    it 'should work' do
      
          instance.uri = "TEST_STRING"
          expect(instance.uri).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "date_created"' do
    it 'should work' do
      
          instance.date_created = "TEST_STRING"
          expect(instance.date_created).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "date_updated"' do
    it 'should work' do
      
          instance.date_updated = "TEST_STRING"
          expect(instance.date_updated).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "revision"' do
    it 'should work' do
      
          instance.revision = 1
          expect(instance.revision).to eq(1) 
        
      
    end
  end
  

  describe 'test attribute "account_id"' do
    it 'should work' do
      
          instance.account_id = "TEST_STRING"
          expect(instance.account_id).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "message_id"' do
    it 'should work' do
      
          instance.message_id = "TEST_STRING"
          expect(instance.message_id).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "status"' do
    it 'assigns value NEW' do
      instance.status = Freeclimb::MessageStatus::NEW
      expect(instance.status).to eq(Freeclimb::MessageStatus::NEW)  
    end
    it 'assigns value QUEUED' do
      instance.status = Freeclimb::MessageStatus::QUEUED
      expect(instance.status).to eq(Freeclimb::MessageStatus::QUEUED)  
    end
    it 'assigns value REJECTED' do
      instance.status = Freeclimb::MessageStatus::REJECTED
      expect(instance.status).to eq(Freeclimb::MessageStatus::REJECTED)  
    end
    it 'assigns value SENDING' do
      instance.status = Freeclimb::MessageStatus::SENDING
      expect(instance.status).to eq(Freeclimb::MessageStatus::SENDING)  
    end
    it 'assigns value SENT' do
      instance.status = Freeclimb::MessageStatus::SENT
      expect(instance.status).to eq(Freeclimb::MessageStatus::SENT)  
    end
    it 'assigns value FAILED' do
      instance.status = Freeclimb::MessageStatus::FAILED
      expect(instance.status).to eq(Freeclimb::MessageStatus::FAILED)  
    end
    it 'assigns value RECEIVED' do
      instance.status = Freeclimb::MessageStatus::RECEIVED
      expect(instance.status).to eq(Freeclimb::MessageStatus::RECEIVED)  
    end
    it 'assigns value UNDELIVERED' do
      instance.status = Freeclimb::MessageStatus::UNDELIVERED
      expect(instance.status).to eq(Freeclimb::MessageStatus::UNDELIVERED)  
    end
    it 'assigns value EXPIRED' do
      instance.status = Freeclimb::MessageStatus::EXPIRED
      expect(instance.status).to eq(Freeclimb::MessageStatus::EXPIRED)  
    end
    it 'assigns value DELETED' do
      instance.status = Freeclimb::MessageStatus::DELETED
      expect(instance.status).to eq(Freeclimb::MessageStatus::DELETED)  
    end
    it 'assigns value UNKNOWN' do
      instance.status = Freeclimb::MessageStatus::UNKNOWN
      expect(instance.status).to eq(Freeclimb::MessageStatus::UNKNOWN)  
    end
  end

  describe 'test attribute "from"' do
    it 'should work' do
      
          instance.from = "TEST_STRING"
          expect(instance.from).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "to"' do
    it 'should work' do
      
          instance.to = "TEST_STRING"
          expect(instance.to).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "text"' do
    it 'should work' do
      
          instance.text = "TEST_STRING"
          expect(instance.text).to eq("TEST_STRING")  
        
      
    end
  end
  

  describe 'test attribute "direction"' do
    it 'should work' do
      
          instance.direction = "TEST_STRING"
          expect(instance.direction).to eq("TEST_STRING")  
        
      
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
        expect{instance = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::MessageResult' do
        expect{instance = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      instance_1 = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
      )
      instance_2 = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::MessageResult.new(
          
          uri: "TS",
          
          
          date_created: "TS",
          
          
          date_updated: "TS",
          
          
          revision: 1,
          
          account_id: "TS",
          
          
          message_id: "TS",
          
          
          status: "NEW",
          
          from: "TS",
          
          
          to: "TS",
          
          
          text: "TS",
          
          
          direction: "TS",
          
          
          notification_url: "TS",
          
      )
      instance_2 = Freeclimb::MessageResult.new(
          
          uri: "ST",
          
          
          date_created: "ST",
          
          
          date_updated: "ST",
          
          
          revision: 0,
          
          account_id: "ST",
          
          
          message_id: "ST",
          
          
          status: "QUEUED",
          
          from: "ST",
          
          
          to: "ST",
          
          
          text: "ST",
          
          
          direction: "ST",
          
          
          notification_url: "ST",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
      )
      instance_2 = Freeclimb::MessageResult.new
      expect(instance_2.build_from_hash(instance.hash)).to eq(instance.build_from_hash(instance.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
    )
    
    it 'deserializes the data of uri' do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of date_created' do
      expect(instance._deserialize("String", instance.date_created)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of date_updated' do
      expect(instance._deserialize("String", instance.date_updated)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of revision' do
      expect(instance._deserialize("Integer", instance.revision)).to be_a_kind_of(Integer)
    end
    
    
    
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of message_id' do
      expect(instance._deserialize("String", instance.message_id)).to be_a_kind_of(String)
    end
    
    
    
    
    
    it 'deserializes the data of from' do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of to' do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of text' do
      expect(instance._deserialize("String", instance.text)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of direction' do
      expect(instance._deserialize("String", instance.direction)).to be_a_kind_of(String)
    end
    
    
    
    it 'deserializes the data of notification_url' do
      expect(instance._deserialize("String", instance.notification_url)).to be_a_kind_of(String)
    end
    
    
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
      )
      instance_2 = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::MessageResult.new(
        
        uri: "TS",
        
        
        date_created: "TS",
        
        
        date_updated: "TS",
        
        
        revision: 1,
        
        account_id: "TS",
        
        
        message_id: "TS",
        
        
        status: "NEW",
        
        from: "TS",
        
        
        to: "TS",
        
        
        text: "TS",
        
        
        direction: "TS",
        
        
        notification_url: "TS",
        
    )
    it 'returns uri in the form of hash' do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
    it 'returns date_created in the form of hash' do
      expect(instance._to_hash(instance.date_created)).to eq(instance.date_created)
    end
    it 'returns date_updated in the form of hash' do
      expect(instance._to_hash(instance.date_updated)).to eq(instance.date_updated)
    end
    it 'returns revision in the form of hash' do
      expect(instance._to_hash(instance.revision)).to eq(instance.revision)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns message_id in the form of hash' do
      expect(instance._to_hash(instance.message_id)).to eq(instance.message_id)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
    it 'returns from in the form of hash' do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it 'returns to in the form of hash' do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it 'returns text in the form of hash' do
      expect(instance._to_hash(instance.text)).to eq(instance.text)
    end
    it 'returns direction in the form of hash' do
      expect(instance._to_hash(instance.direction)).to eq(instance.direction)
    end
    it 'returns notification_url in the form of hash' do
      expect(instance._to_hash(instance.notification_url)).to eq(instance.notification_url)
    end
  end

end
