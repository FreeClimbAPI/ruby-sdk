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

# Unit tests for Freeclimb::SMSTenDLCPartnerCampaignBrand
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTenDLCPartnerCampaignBrand do
  let(:instance) { Freeclimb::SMSTenDLCPartnerCampaignBrand.new }

  describe 'test an instance of SMSTenDLCPartnerCampaignBrand' do
    it 'should create an instance of SMSTenDLCPartnerCampaignBrand' do
      expect(instance).to be_instance_of(Freeclimb::SMSTenDLCPartnerCampaignBrand)
    end
  end

  describe 'test attribute "account_id"' do
    it 'should work' do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "brand_id"' do
    it 'should work' do
      instance.brand_id = "TEST_STRING"
      expect(instance.brand_id).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "first_name"' do
    it 'should work' do
      instance.first_name = "TEST_STRING"
      expect(instance.first_name).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "last_name"' do
    it 'should work' do
      instance.last_name = "TEST_STRING"
      expect(instance.last_name).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "display_name"' do
    it 'should work' do
      instance.display_name = "TEST_STRING"
      expect(instance.display_name).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "company_name"' do
    it 'should work' do
      instance.company_name = "TEST_STRING"
      expect(instance.company_name).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "phone"' do
    it 'should work' do
      instance.phone = "TEST_STRING"
      expect(instance.phone).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "email"' do
    it 'should work' do
      instance.email = "TEST_STRING"
      expect(instance.email).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "website"' do
    it 'should work' do
      instance.website = "TEST_STRING"
      expect(instance.website).to eq("TEST_STRING")  
    end
  end


  describe 'test attribute "optional_attributes"' do
    it 'should work' do
      testObject = Object.new()
      instance.optional_attributes = testObject
      expect(instance.optional_attributes).to eq(testObject)
    end
  end


  describe 'test attribute "evp_vetting_score"' do
    it 'should work' do
      instance.evp_vetting_score = 1
      expect(instance.evp_vetting_score).to eq(1) 
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: Object.new(),
          optional_attributes: Hash.new(),
          evp_vetting_score: 1,
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::SMSTenDLCPartnerCampaignBrand' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: Object.new(),
          optional_attributes: Hash.new(),
          evp_vetting_score: 1,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: Object.new(),
          optional_attributes: Hash.new(),
          evp_vetting_score: 1,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: Object.new(),
          optional_attributes: Hash.new(),
          evp_vetting_score: 1,
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: nil,
          evp_vetting_score: 1,
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: nil,
          evp_vetting_score: 1,
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "TS",
          brand_id: "TS",
          first_name: "TS",
          last_name: "TS",
          display_name: "TS",
          company_name: "TS",
          phone: "TS",
          email: "TS",
          website: "TS",
          optional_attributes: Object.new(),
          evp_vetting_score: 1,
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
          account_id: "ST",
          brand_id: "ST",
          first_name: "ST",
          last_name: "ST",
          display_name: "ST",
          company_name: "ST",
          phone: "ST",
          email: "ST",
          website: "ST",
          optional_attributes: nil,
          evp_vetting_score: 0,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
      account_id: "TS",
      brand_id: "TS",
      first_name: "TS",
      last_name: "TS",
      display_name: "TS",
      company_name: "TS",
      phone: "TS",
      email: "TS",
      website: "TS",
      optional_attributes: Object.new(),
      optional_attributes: Hash.new(),
      evp_vetting_score: 1,
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        brand_id: "TS",
        first_name: "TS",
        last_name: "TS",
        display_name: "TS",
        company_name: "TS",
        phone: "TS",
        email: "TS",
        website: "TS",
        optional_attributes: Object.new(),
        optional_attributes: Hash.new(),
        evp_vetting_score: 1,
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        brand_id: "TS",
        first_name: "TS",
        last_name: "TS",
        display_name: "TS",
        company_name: "TS",
        phone: "TS",
        email: "TS",
        website: "TS",
        optional_attributes: Object.new(),
        optional_attributes: Hash.new(),
        evp_vetting_score: 1,
    )
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
        it 'deserializes the data of brand_id' do
      expect(instance._deserialize("String", instance.brand_id)).to be_a_kind_of(String)
    end
        it 'deserializes the data of first_name' do
      expect(instance._deserialize("String", instance.first_name)).to be_a_kind_of(String)
    end
        it 'deserializes the data of last_name' do
      expect(instance._deserialize("String", instance.last_name)).to be_a_kind_of(String)
    end
        it 'deserializes the data of display_name' do
      expect(instance._deserialize("String", instance.display_name)).to be_a_kind_of(String)
    end
        it 'deserializes the data of company_name' do
      expect(instance._deserialize("String", instance.company_name)).to be_a_kind_of(String)
    end
        it 'deserializes the data of phone' do
      expect(instance._deserialize("String", instance.phone)).to be_a_kind_of(String)
    end
        it 'deserializes the data of email' do
      expect(instance._deserialize("String", instance.email)).to be_a_kind_of(String)
    end
        it 'deserializes the data of website' do
      expect(instance._deserialize("String", instance.website)).to be_a_kind_of(String)
    end
        it 'deserializes the data of optional_attributes' do
      expect(instance._deserialize("Hash<String, Object>", instance.optional_attributes)).to be_a_kind_of(Hash)
    end
        it 'deserializes the data of evp_vetting_score' do
      expect(instance._deserialize("Integer", instance.evp_vetting_score)).to be_a_kind_of(Integer)
    end
      end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        brand_id: "TS",
        first_name: "TS",
        last_name: "TS",
        display_name: "TS",
        company_name: "TS",
        phone: "TS",
        email: "TS",
        website: "TS",
        optional_attributes: Object.new(),
        optional_attributes: Hash.new(),
        evp_vetting_score: 1,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        
        brand_id: "TS",
        
        first_name: "TS",
        
        last_name: "TS",
        
        display_name: "TS",
        
        company_name: "TS",
        
        phone: "TS",
        
        email: "TS",
        
        website: "TS",
        

        optional_attributes: Object.new(),
        optional_attributes: Hash.new(),

        evp_vetting_score: 1,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        brand_id: "TS",
        first_name: "TS",
        last_name: "TS",
        display_name: "TS",
        company_name: "TS",
        phone: "TS",
        email: "TS",
        website: "TS",
        optional_attributes: obj,
        optional_attributes: Hash.new(),
        evp_vetting_score: 1,
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
        brand_id: "TS",
        first_name: "TS",
        last_name: "TS",
        display_name: "TS",
        company_name: "TS",
        phone: "TS",
        email: "TS",
        website: "TS",

        optional_attributes: obj,
        
        optional_attributes: Hash.new(),
        
        evp_vetting_score: 1,
              )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::SMSTenDLCPartnerCampaignBrand.new(
        account_id: "TS",
      
        brand_id: "TS",
      
        first_name: "TS",
      
        last_name: "TS",
      
        display_name: "TS",
      
        company_name: "TS",
      
        phone: "TS",
      
        email: "TS",
      
        website: "TS",
      
        optional_attributes: Object.new(),
        optional_attributes: Hash.new(),
      
        evp_vetting_score: 1,
      )
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns brand_id in the form of hash' do
      expect(instance._to_hash(instance.brand_id)).to eq(instance.brand_id)
    end
    it 'returns first_name in the form of hash' do
      expect(instance._to_hash(instance.first_name)).to eq(instance.first_name)
    end
    it 'returns last_name in the form of hash' do
      expect(instance._to_hash(instance.last_name)).to eq(instance.last_name)
    end
    it 'returns display_name in the form of hash' do
      expect(instance._to_hash(instance.display_name)).to eq(instance.display_name)
    end
    it 'returns company_name in the form of hash' do
      expect(instance._to_hash(instance.company_name)).to eq(instance.company_name)
    end
    it 'returns phone in the form of hash' do
      expect(instance._to_hash(instance.phone)).to eq(instance.phone)
    end
    it 'returns email in the form of hash' do
      expect(instance._to_hash(instance.email)).to eq(instance.email)
    end
    it 'returns website in the form of hash' do
      expect(instance._to_hash(instance.website)).to eq(instance.website)
    end
    it 'returns optional_attributes in the form of hash' do
      expect(instance._to_hash(instance.optional_attributes)).to eq(instance.optional_attributes)
    end
    it 'returns evp_vetting_score in the form of hash' do
      expect(instance._to_hash(instance.evp_vetting_score)).to eq(instance.evp_vetting_score)
    end
  end

end
