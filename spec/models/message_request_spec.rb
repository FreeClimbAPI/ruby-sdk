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

# Unit tests for Freeclimb::MessageRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MessageRequest do
  let(:instance) { Freeclimb::MessageRequest.new }

  describe 'test an instance of MessageRequest' do
    it 'should create an instance of MessageRequest' do
      expect(instance).to be_instance_of(Freeclimb::MessageRequest)
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

  describe 'test attribute "notification_url"' do
    it 'should work' do
      instance.notification_url = "TEST_STRING"
      expect(instance.notification_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "media_urls"' do
    it 'should work' do
        
      instance.media_urls = ["ELEMENT_1", "ELEMENT_2"]
      expect(instance.media_urls).to eq(["ELEMENT_1", "ELEMENT_2"]) 
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: Array.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::MessageRequest' do
        expect{instance = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: Array.new(),
      )
      expect(instance.valid?).to eq(true)
    end


    # it 'checks if properties are invalid' do
    #   instance = Freeclimb::MessageRequest.new(
        
    #   )
    #   expect(instance.valid?).to eq(false)
    # end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: [],
      )
      instance_2 = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: [],
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::MessageRequest.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
          from: "TS",
          to: "TS",
          text: "TS",
          notification_url: "TS",
          media_urls: [],
      )
      instance_2 = Freeclimb::MessageRequest.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
          from: "ST",
          to: "ST",
          text: "ST",
          notification_url: "ST",
          media_urls: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::MessageRequest.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      from: "TS",
      to: "TS",
      text: "TS",
      notification_url: "TS",
      media_urls: Array.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
      )
      instance_2 = Freeclimb::MessageRequest.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
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
    it 'deserializes the data of from' do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end
    it 'deserializes the data of to' do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end
    it 'deserializes the data of text' do
      expect(instance._deserialize("String", instance.text)).to be_a_kind_of(String)
    end
    it 'deserializes the data of notification_url' do
      expect(instance._deserialize("String", instance.notification_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of media_urls' do
      expect(instance._deserialize("Array<String>", instance.media_urls)).to be_a_kind_of(Array)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
      )
      instance_2 = Freeclimb::MessageRequest.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        from: "TS",
        to: "TS",
        text: "TS",
        notification_url: "TS",
        media_urls: Array.new(),
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::MessageRequest.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        from: "TS",
      
        to: "TS",
      
        text: "TS",
      
        notification_url: "TS",
      
        media_urls: Array.new(),
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
    it 'returns from in the form of hash' do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it 'returns to in the form of hash' do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it 'returns text in the form of hash' do
      expect(instance._to_hash(instance.text)).to eq(instance.text)
    end
    it 'returns notification_url in the form of hash' do
      expect(instance._to_hash(instance.notification_url)).to eq(instance.notification_url)
    end
    it 'returns media_urls in the form of hash' do
      expect(instance._to_hash(instance.media_urls)).to eq(instance.media_urls)
    end
  end

end
