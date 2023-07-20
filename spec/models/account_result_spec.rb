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

# Unit tests for Freeclimb::AccountResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AccountResult do
  let(:instance) { Freeclimb::AccountResult.new }

  describe 'test an instance of AccountResult' do
    it 'should create an instance of AccountResult' do
      expect(instance).to be_instance_of(Freeclimb::AccountResult)
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

  describe 'test attribute "api_key"' do
    it 'should work' do
      instance.api_key = "TEST_STRING"
      expect(instance.api_key).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "_alias"' do
    it 'should work' do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "label"' do
    it 'should work' do
      instance.label = "TEST_STRING"
      expect(instance.label).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "type"' do
    it 'assigns value TRIAL' do
      instance.type = Freeclimb::AccountType::TRIAL
      expect(instance.type).to eq(Freeclimb::AccountType::TRIAL)  
    end
    it 'assigns value FULL' do
      instance.type = Freeclimb::AccountType::FULL
      expect(instance.type).to eq(Freeclimb::AccountType::FULL)  
    end
  end

  describe 'test attribute "status"' do
    it 'assigns value CLOSED' do
      instance.status = Freeclimb::AccountStatus::CLOSED
      expect(instance.status).to eq(Freeclimb::AccountStatus::CLOSED)  
    end
    it 'assigns value SUSPENDED' do
      instance.status = Freeclimb::AccountStatus::SUSPENDED
      expect(instance.status).to eq(Freeclimb::AccountStatus::SUSPENDED)  
    end
    it 'assigns value ACTIVE' do
      instance.status = Freeclimb::AccountStatus::ACTIVE
      expect(instance.status).to eq(Freeclimb::AccountStatus::ACTIVE)  
    end
  end

  describe 'test attribute "subresource_uris"' do
    it 'should work' do
      testObject = Object.new()
      instance.subresource_uris = testObject
      expect(instance.subresource_uris).to eq(testObject)
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: Object.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::AccountResult' do
        expect{instance = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: Object.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: Object.new(),
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: obj,
      )
      instance_2 = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: obj,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::AccountResult.new(
          uri: "TS",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          account_id: "TS",
          api_key: "TS",
          _alias: "TS",
          label: "TS",
          type: "TRIAL",
          status: "CLOSED",
          subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::AccountResult.new(
          uri: "ST",
          date_created: "ST",
          date_updated: "ST",
          revision: 0,
          account_id: "ST",
          api_key: "ST",
          _alias: "ST",
          label: "ST",
          type: "FULL",
          status: "SUSPENDED",
          subresource_uris: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::AccountResult.new(
      uri: "TS",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
      account_id: "TS",
      api_key: "TS",
      _alias: "TS",
      label: "TS",
      type: "TRIAL",
      status: "CLOSED",
      subresource_uris: Object.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: Object.new(),
      )
      instance_2 = Freeclimb::AccountResult.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: Object.new(),
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
    it 'deserializes the data of api_key' do
      expect(instance._deserialize("String", instance.api_key)).to be_a_kind_of(String)
    end
    it 'deserializes the data of _alias' do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end
    it 'deserializes the data of label' do
      expect(instance._deserialize("String", instance.label)).to be_a_kind_of(String)
    end
    it 'deserializes the data of subresource_uris' do
      expect(instance._deserialize("Object", instance.subresource_uris)).to be_a_kind_of(Object)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: Object.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: Object.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: obj,
      )
      instance_2 = Freeclimb::AccountResult.new(
        uri: "TS",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
        account_id: "TS",
        api_key: "TS",
        _alias: "TS",
        label: "TS",
        type: "TRIAL",
        status: "CLOSED",
        subresource_uris: obj,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::AccountResult.new(
        uri: "TS",
      
        date_created: "TS",
      
        date_updated: "TS",
      
        revision: 1,
      
        account_id: "TS",
      
        api_key: "TS",
      
        _alias: "TS",
      
        label: "TS",
      
        type: "TRIAL",
      
        status: "CLOSED",
      
        subresource_uris: Object.new(),
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
    it 'returns api_key in the form of hash' do
      expect(instance._to_hash(instance.api_key)).to eq(instance.api_key)
    end
    it 'returns _alias in the form of hash' do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it 'returns label in the form of hash' do
      expect(instance._to_hash(instance.label)).to eq(instance.label)
    end
    it 'returns type in the form of hash' do
      expect(instance._to_hash(instance.type)).to eq(instance.type)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
    it 'returns subresource_uris in the form of hash' do
      expect(instance._to_hash(instance.subresource_uris)).to eq(instance.subresource_uris)
    end
  end

end
