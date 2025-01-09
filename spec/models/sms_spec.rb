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

# Unit tests for Freeclimb::Sms
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::Sms do
  let(:instance) { Freeclimb::Sms.new }

  describe 'test an instance of Sms' do
    it 'should create an instance of Sms' do
      expect(instance).to be_instance_of(Freeclimb::Sms)
    end
  end
  
  describe 'test attribute "to"' do
    it 'should work' do
      instance.to = "TEST_STRING"
      expect(instance.to).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "from"' do
    it 'should work' do
      instance.from = "TEST_STRING"
      expect(instance.from).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "text"' do
    it 'should work' do
      instance.text = "TEST_STRING"
      expect(instance.text).to eq("TEST_STRING")  
        
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
      expect { instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::Sms' do
      expect { instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
      expect { instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::Sms.new(
          to: "TS",
          
          from: "TS",
          
          text: "TS",
          
          notification_url: "TS",
          
      )
      expect(instance.valid?).to eq(true)
    end


    skip 'checks if properties are invalid' do
      instance = Freeclimb::Sms.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::Sms.new(
          to: "TS",
          
          from: "TS",
          
          text: "TS",
          
          notification_url: "TS",
          
      )
      instance_2 = Freeclimb::Sms.new(
          to: "TS",
          
          from: "TS",
          
          text: "TS",
          
          notification_url: "TS",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::Sms.new(
          to: "TS",
          
          from: "TS",
          
          text: "TS",
          
          notification_url: "TS",
          
      )
      instance_2 = Freeclimb::Sms.new(
          to: "ST",
          
          from: "ST",
          
          text: "ST",
          
          notification_url: "ST",
          
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::Sms.new(
      to: "TS",
      
      from: "TS",
      
      text: "TS",
      
      notification_url: "TS",
      
    )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )
      instance_2 = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
    )
    it 'deserializes the data of to' do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end
    it 'deserializes the data of from' do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end
    it 'deserializes the data of text' do
      expect(instance._deserialize("String", instance.text)).to be_a_kind_of(String)
    end
    it 'deserializes the data of notification_url' do
      expect(instance._deserialize("String", instance.notification_url)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )
      instance_2 = Freeclimb::Sms.new(
        to: "TS",
        
        from: "TS",
        
        text: "TS",
        
        notification_url: "TS",
        
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::Sms.new(
        to: "TS",
        
      
        from: "TS",
        
      
        text: "TS",
        
      
        notification_url: "TS",
        
      )
    it 'returns to in the form of hash' do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it 'returns from in the form of hash' do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it 'returns text in the form of hash' do
      expect(instance._to_hash(instance.text)).to eq(instance.text)
    end
    it 'returns notification_url in the form of hash' do
      expect(instance._to_hash(instance.notification_url)).to eq(instance.notification_url)
    end
  end

end
