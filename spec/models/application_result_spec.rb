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

# Unit tests for Freeclimb::ApplicationResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ApplicationResult do
  let(:instance) { Freeclimb::ApplicationResult.new }

  describe 'test an instance of ApplicationResult' do
    it 'should create an instance of ApplicationResult' do
      expect(instance).to be_instance_of(Freeclimb::ApplicationResult)
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

  describe 'test attribute "application_id"' do
    it 'should work' do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "_alias"' do
    it 'should work' do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "voice_url"' do
    it 'should work' do
      instance.voice_url = "TEST_STRING"
      expect(instance.voice_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "voice_fallback_url"' do
    it 'should work' do
      instance.voice_fallback_url = "TEST_STRING"
      expect(instance.voice_fallback_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "call_connect_url"' do
    it 'should work' do
      instance.call_connect_url = "TEST_STRING"
      expect(instance.call_connect_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "status_callback_url"' do
    it 'should work' do
      instance.status_callback_url = "TEST_STRING"
      expect(instance.status_callback_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "sms_url"' do
    it 'should work' do
      instance.sms_url = "TEST_STRING"
      expect(instance.sms_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test attribute "sms_fallback_url"' do
    it 'should work' do
      instance.sms_fallback_url = "TEST_STRING"
      expect(instance.sms_fallback_url).to eq("TEST_STRING")  
        
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::ApplicationResult' do
        expect{instance = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
      )
      expect(instance.valid?).to eq(true)
    end


    # it 'checks if properties are invalid' do
    #   instance = Freeclimb::ApplicationResult.new(
        
    #   )
    #   expect(instance.valid?).to eq(false)
    # end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
      )
      instance_2 = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::ApplicationResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
          account_id: "TS",
          application_id: "TS",
          _alias: "TS",
          voice_url: "TS",
          voice_fallback_url: "TS",
          call_connect_url: "TS",
          status_callback_url: "TS",
          sms_url: "TS",
          sms_fallback_url: "TS",
      )
      instance_2 = Freeclimb::ApplicationResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
          account_id: "ST",
          application_id: "ST",
          _alias: "ST",
          voice_url: "ST",
          voice_fallback_url: "ST",
          call_connect_url: "ST",
          status_callback_url: "ST",
          sms_url: "ST",
          sms_fallback_url: "ST",
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::ApplicationResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      account_id: "TS",
      application_id: "TS",
      _alias: "TS",
      voice_url: "TS",
      voice_fallback_url: "TS",
      call_connect_url: "TS",
      status_callback_url: "TS",
      sms_url: "TS",
      sms_fallback_url: "TS",
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
      )
      instance_2 = Freeclimb::ApplicationResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
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
    it 'deserializes the data of application_id' do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of _alias' do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end
    it 'deserializes the data of voice_url' do
      expect(instance._deserialize("String", instance.voice_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of voice_fallback_url' do
      expect(instance._deserialize("String", instance.voice_fallback_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of call_connect_url' do
      expect(instance._deserialize("String", instance.call_connect_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of status_callback_url' do
      expect(instance._deserialize("String", instance.status_callback_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sms_url' do
      expect(instance._deserialize("String", instance.sms_url)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sms_fallback_url' do
      expect(instance._deserialize("String", instance.sms_fallback_url)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
      )
      instance_2 = Freeclimb::ApplicationResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        application_id: "TS",
        _alias: "TS",
        voice_url: "TS",
        voice_fallback_url: "TS",
        call_connect_url: "TS",
        status_callback_url: "TS",
        sms_url: "TS",
        sms_fallback_url: "TS",
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::ApplicationResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        account_id: "TS",
      
        application_id: "TS",
      
        _alias: "TS",
      
        voice_url: "TS",
      
        voice_fallback_url: "TS",
      
        call_connect_url: "TS",
      
        status_callback_url: "TS",
      
        sms_url: "TS",
      
        sms_fallback_url: "TS",
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
    it 'returns application_id in the form of hash' do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
    it 'returns _alias in the form of hash' do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it 'returns voice_url in the form of hash' do
      expect(instance._to_hash(instance.voice_url)).to eq(instance.voice_url)
    end
    it 'returns voice_fallback_url in the form of hash' do
      expect(instance._to_hash(instance.voice_fallback_url)).to eq(instance.voice_fallback_url)
    end
    it 'returns call_connect_url in the form of hash' do
      expect(instance._to_hash(instance.call_connect_url)).to eq(instance.call_connect_url)
    end
    it 'returns status_callback_url in the form of hash' do
      expect(instance._to_hash(instance.status_callback_url)).to eq(instance.status_callback_url)
    end
    it 'returns sms_url in the form of hash' do
      expect(instance._to_hash(instance.sms_url)).to eq(instance.sms_url)
    end
    it 'returns sms_fallback_url in the form of hash' do
      expect(instance._to_hash(instance.sms_fallback_url)).to eq(instance.sms_fallback_url)
    end
  end

end
