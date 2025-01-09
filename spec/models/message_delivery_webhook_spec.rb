=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Freeclimb::MessageDeliveryWebhook
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MessageDeliveryWebhook do
  let(:instance) { Freeclimb::MessageDeliveryWebhook.new }

  describe 'test an instance of MessageDeliveryWebhook' do
    it 'should create an instance of MessageDeliveryWebhook' do
      expect(instance).to be_instance_of(Freeclimb::MessageDeliveryWebhook)
    end
  end
  describe '.deserialize' do
    it 'deserializes a json payload into instance of MessageDeliveryWebhook' do
      payload = '{ "requestType": "messageDelivery" }'
      expect(Freeclimb::MessageDeliveryWebhook.deserialize(payload)).to be_instance_of(Freeclimb::MessageDeliveryWebhook)
    end
  end
  
  describe 'test attribute "request_type"' do
    it 'should work' do
      instance.request_type = "TEST_STRING"
      expect(instance.request_type).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
        
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

  describe 'test attribute "application_id"' do
    it 'should work' do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "status"' do
    it 'should work' do
      instance.status = "TEST_STRING"
      expect(instance.status).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "phone_number_id"' do
    it 'should work' do
      instance.phone_number_id = "TEST_STRING"
      expect(instance.phone_number_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "uri"' do
    it 'should work' do
      instance.uri = "TEST_STRING"
      expect(instance.uri).to eq("TEST_STRING")  
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
      expect { instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::MessageDeliveryWebhook' do
      expect { instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
      expect { instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::MessageDeliveryWebhook.new(
          request_type: "TS",
          
          account_id: "TS",
          
          from: "TS",
          
          to: "TS",
          
          text: "TS",
          
          direction: "TS",
          
          application_id: "TS",
          
          status: "TS",
          
          phone_number_id: "TS",
          
          uri: "TS",
          
      )
      expect(instance.valid?).to eq(true)
    end


    skip 'checks if properties are invalid' do
      instance = Freeclimb::MessageDeliveryWebhook.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::MessageDeliveryWebhook.new(
          request_type: "TS",
          
          account_id: "TS",
          
          from: "TS",
          
          to: "TS",
          
          text: "TS",
          
          direction: "TS",
          
          application_id: "TS",
          
          status: "TS",
          
          phone_number_id: "TS",
          
          uri: "TS",
          
      )
      instance_2 = Freeclimb::MessageDeliveryWebhook.new(
          request_type: "TS",
          
          account_id: "TS",
          
          from: "TS",
          
          to: "TS",
          
          text: "TS",
          
          direction: "TS",
          
          application_id: "TS",
          
          status: "TS",
          
          phone_number_id: "TS",
          
          uri: "TS",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::MessageDeliveryWebhook.new(
          request_type: "TS",
          
          account_id: "TS",
          
          from: "TS",
          
          to: "TS",
          
          text: "TS",
          
          direction: "TS",
          
          application_id: "TS",
          
          status: "TS",
          
          phone_number_id: "TS",
          
          uri: "TS",
          
      )
      instance_2 = Freeclimb::MessageDeliveryWebhook.new(
          request_type: "ST",
          
          account_id: "ST",
          
          from: "ST",
          
          to: "ST",
          
          text: "ST",
          
          direction: "ST",
          
          application_id: "ST",
          
          status: "ST",
          
          phone_number_id: "ST",
          
          uri: "ST",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::MessageDeliveryWebhook.new(
      request_type: "TS",
      
      account_id: "TS",
      
      from: "TS",
      
      to: "TS",
      
      text: "TS",
      
      direction: "TS",
      
      application_id: "TS",
      
      status: "TS",
      
      phone_number_id: "TS",
      
      uri: "TS",
      
    )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )
      instance_2 = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
    )
    it 'deserializes the data of request_type' do
      expect(instance._deserialize("String", instance.request_type)).to be_a_kind_of(String)
    end
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
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
    it 'deserializes the data of application_id' do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of status' do
      expect(instance._deserialize("String", instance.status)).to be_a_kind_of(String)
    end
    it 'deserializes the data of phone_number_id' do
      expect(instance._deserialize("String", instance.phone_number_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of uri' do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )
      instance_2 = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
        account_id: "TS",
        
        from: "TS",
        
        to: "TS",
        
        text: "TS",
        
        direction: "TS",
        
        application_id: "TS",
        
        status: "TS",
        
        phone_number_id: "TS",
        
        uri: "TS",
        
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::MessageDeliveryWebhook.new(
        request_type: "TS",
        
      
        account_id: "TS",
        
      
        from: "TS",
        
      
        to: "TS",
        
      
        text: "TS",
        
      
        direction: "TS",
        
      
        application_id: "TS",
        
      
        status: "TS",
        
      
        phone_number_id: "TS",
        
      
        uri: "TS",
        
      )
    it 'returns request_type in the form of hash' do
      expect(instance._to_hash(instance.request_type)).to eq(instance.request_type)
    end
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
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
    it 'returns application_id in the form of hash' do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
    it 'returns phone_number_id in the form of hash' do
      expect(instance._to_hash(instance.phone_number_id)).to eq(instance.phone_number_id)
    end
    it 'returns uri in the form of hash' do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
  end

end