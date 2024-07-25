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

# Unit tests for Freeclimb::SMSTollFreeCampaign
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTollFreeCampaign do
  let(:instance) { Freeclimb::SMSTollFreeCampaign.new }

  describe 'test an instance of SMSTollFreeCampaign' do
    it 'should create an instance of SMSTollFreeCampaign' do
      expect(instance).to be_instance_of(Freeclimb::SMSTollFreeCampaign)
    end
  end
  
  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "campaign_id"' do
    it 'should work' do
      instance.campaign_id = "TEST_STRING"
      expect(instance.campaign_id).to eq("TEST_STRING")  
    end
  end

  describe 'test attribute "use_case"' do
    it 'should work' do
      instance.use_case = "TEST_STRING"
      expect(instance.use_case).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "registration_status"' do
    it 'assigns value UNREGISTERED' do
      instance.registration_status = "UNREGISTERED"
      expect(instance.registration_status).to eq("UNREGISTERED")  
    end
    it 'assigns value INITIATED' do
      instance.registration_status = "INITIATED"
      expect(instance.registration_status).to eq("INITIATED")  
    end
    it 'assigns value PENDING' do
      instance.registration_status = "PENDING"
      expect(instance.registration_status).to eq("PENDING")  
    end
    it 'assigns value DECLINED' do
      instance.registration_status = "DECLINED"
      expect(instance.registration_status).to eq("DECLINED")  
    end
    it 'assigns value REGISTERED' do
      instance.registration_status = "REGISTERED"
      expect(instance.registration_status).to eq("REGISTERED")  
    end
    it 'throws error on invalid enum' do
      instance = Freeclimb::SMSTollFreeCampaign.new
      expect{instance.registration_status = "INVALID_ENUM"}.to raise_error(ArgumentError)
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

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::SMSTollFreeCampaign' do
        expect{instance = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
      )
      instance_2 = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 1,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          use_case: "TS",
          registration_status: "UNREGISTERED",
          date_created: "TS",
          date_updated: "TS",
          revision: 2,
      )
      instance_2 = Freeclimb::SMSTollFreeCampaign.new(
          account_id: "ST",
          campaign_id: "ST",
          use_case: "ST",
          registration_status: "INITIATED",
          date_created: "ST",
          date_updated: "ST",
          revision: 1,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::SMSTollFreeCampaign.new(
      account_id: "TS",
      campaign_id: "TS",
      use_case: "TS",
      registration_status: "UNREGISTERED",
      date_created: "TS",
      date_updated: "TS",
      revision: 1,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
      )
      instance_2 = Freeclimb::SMSTollFreeCampaign.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
        revision: 1,
    )
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of campaign_id' do
      expect(instance._deserialize("String", instance.campaign_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of use_case' do
      expect(instance._deserialize("String", instance.use_case)).to be_a_kind_of(String)
    end
    it 'deserializes the data of registration_status' do
      expect(instance._deserialize("String", instance.registration_status)).to be_a_kind_of(String)
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
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
revision: 1,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
revision: 1,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
revision: 1,
      )
      instance_2 = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        use_case: "TS",
        registration_status: "UNREGISTERED",
        date_created: "TS",
        date_updated: "TS",
revision: 1,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::SMSTollFreeCampaign.new(
        account_id: "TS",
      
        campaign_id: "TS",
      
        use_case: "TS",
      
        registration_status: "UNREGISTERED",
      
        date_created: "TS",
      
        date_updated: "TS",
      
revision: 1,
      )
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns campaign_id in the form of hash' do
      expect(instance._to_hash(instance.campaign_id)).to eq(instance.campaign_id)
    end
    it 'returns use_case in the form of hash' do
      expect(instance._to_hash(instance.use_case)).to eq(instance.use_case)
    end
    it 'returns registration_status in the form of hash' do
      expect(instance._to_hash(instance.registration_status)).to eq(instance.registration_status)
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
  end

end
