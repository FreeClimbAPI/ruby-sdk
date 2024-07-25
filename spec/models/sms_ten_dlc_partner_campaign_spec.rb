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

# Unit tests for Freeclimb::SMSTenDLCPartnerCampaign
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTenDLCPartnerCampaign do
  let(:instance) { Freeclimb::SMSTenDLCPartnerCampaign.new }

  describe 'test an instance of SMSTenDLCPartnerCampaign' do
    it 'should create an instance of SMSTenDLCPartnerCampaign' do
      expect(instance).to be_instance_of(Freeclimb::SMSTenDLCPartnerCampaign)
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


  describe 'test attribute "status"' do
    it 'assigns value ACTIVE' do
      instance.status = "ACTIVE"
      expect(instance.status).to eq("ACTIVE")  
    end
    it 'assigns value EXPIRED' do
      instance.status = "EXPIRED"
      expect(instance.status).to eq("EXPIRED")  
    end
    it 'throws error on invalid enum' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new
      expect{instance.status = "INVALID_ENUM"}.to raise_error(ArgumentError)
    end
  end

  describe 'test attribute "create_date"' do
    it 'should work' do
      instance.create_date = "2022-07-05T15:17:05Z"
      expect(instance.create_date).to eq("2022-07-05T15:17:05Z")  
    end
  end

  describe 'test attribute "brand_id"' do
    it 'should assign a value of maxLength' do
      instance.brand_id = "T" * 8
      expect(instance.brand_id).to eq("T" * 8)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.brand_id = "T" * (8 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "usecase"' do
    it 'should assign a value of maxLength' do
      instance.usecase = "T" * 20
      expect(instance.usecase).to eq("T" * 20)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.usecase = "T" * (20 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "description"' do
    it 'should assign a value of maxLength' do
      instance.description = "T" * 4096
      expect(instance.description).to eq("T" * 4096)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.description = "T" * (4096 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "embedded_link"' do
    it 'should work' do
      instance.embedded_link = false
      expect(instance.embedded_link).to eq(false)        
    end
  end

  describe 'test attribute "embedded_phone"' do
    it 'should work' do
      instance.embedded_phone = false
      expect(instance.embedded_phone).to eq(false)        
    end
  end

  describe 'test attribute "affiliate_marketing"' do
    it 'should work' do
      instance.affiliate_marketing = false
      expect(instance.affiliate_marketing).to eq(false)        
    end
  end

  describe 'test attribute "number_pool"' do
    it 'should work' do
      instance.number_pool = false
      expect(instance.number_pool).to eq(false)        
    end
  end

  describe 'test attribute "age_gated"' do
    it 'should work' do
      instance.age_gated = false
      expect(instance.age_gated).to eq(false)        
    end
  end

  describe 'test attribute "direct_lending"' do
    it 'should work' do
      instance.direct_lending = false
      expect(instance.direct_lending).to eq(false)        
    end
  end

  describe 'test attribute "subscriber_optin"' do
    it 'should work' do
      instance.subscriber_optin = false
      expect(instance.subscriber_optin).to eq(false)        
    end
  end

  describe 'test attribute "subscriber_optout"' do
    it 'should work' do
      instance.subscriber_optout = false
      expect(instance.subscriber_optout).to eq(false)        
    end
  end

  describe 'test attribute "subscriber_help"' do
    it 'should work' do
      instance.subscriber_help = false
      expect(instance.subscriber_help).to eq(false)        
    end
  end

  describe 'test attribute "sample1"' do
    it 'should assign a value of maxLength' do
      instance.sample1 = "T" * 1024
      expect(instance.sample1).to eq("T" * 1024)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.sample1 = "T" * (1024 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "sample2"' do
    it 'should assign a value of maxLength' do
      instance.sample2 = "T" * 1024
      expect(instance.sample2).to eq("T" * 1024)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.sample2 = "T" * (1024 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "sample3"' do
    it 'should assign a value of maxLength' do
      instance.sample3 = "T" * 1024
      expect(instance.sample3).to eq("T" * 1024)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.sample3 = "T" * (1024 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "sample4"' do
    it 'should assign a value of maxLength' do
      instance.sample4 = "T" * 1024
      expect(instance.sample4).to eq("T" * 1024)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.sample4 = "T" * (1024 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "sample5"' do
    it 'should assign a value of maxLength' do
      instance.sample5 = "T" * 1024
      expect(instance.sample5).to eq("T" * 1024)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.sample5 = "T" * (1024 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "message_flow"' do
    it 'should assign a value of maxLength' do
      instance.message_flow = "T" * 2048
      expect(instance.message_flow).to eq("T" * 2048)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.message_flow = "T" * (2048 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "help_message"' do
    it 'should assign a value of maxLength' do
      instance.help_message = "T" * 255
      expect(instance.help_message).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.help_message = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "optin_keywords"' do
    it 'should assign a value of maxLength' do
      instance.optin_keywords = "T" * 255
      expect(instance.optin_keywords).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.optin_keywords = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "optout_keywords"' do
    it 'should assign a value of maxLength' do
      instance.optout_keywords = "T" * 255
      expect(instance.optout_keywords).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.optout_keywords = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "help_keywords"' do
    it 'should assign a value of maxLength' do
      instance.help_keywords = "T" * 255
      expect(instance.help_keywords).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.help_keywords = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "optin_message"' do
    it 'should assign a value of maxLength' do
      instance.optin_message = "T" * 255
      expect(instance.optin_message).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.optin_message = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "optout_message"' do
    it 'should assign a value of maxLength' do
      instance.optout_message = "T" * 255
      expect(instance.optout_message).to eq("T" * 255)  
    end
    it 'should not assign a value over maxLength' do
      expect{instance.optout_message = "T" * (255 + 1)}.to raise_error(ArgumentError) 
    end
  end

  describe 'test attribute "brand"' do
    it 'should work' do
      instance.brand = Freeclimb::SMSTenDLCPartnerCampaignBrand.new
      expect(instance.brand).to be_instance_of(Freeclimb::SMSTenDLCPartnerCampaignBrand)
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          create_date: "2022-07-05T15:17:05Z",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::SMSTenDLCPartnerCampaign' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          create_date: "2022-07-05T15:17:05Z",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          create_date: "2022-07-05T15:17:05Z",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          create_date: "2022-07-05T15:17:05Z",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      expect(instance.valid?).to eq(true)
    end

    it 'checks if properties are invalid' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
            
      
      campaign_id: nil,                  
      brand_id: "T" * 8,
            
      usecase: "T" * 20,
            
      description: "T" * 4096,
                                                                  
      sample1: nil,
            
      sample2: nil,
            
      sample3: nil,
            
      sample4: nil,
            
      sample5: nil,
            
      message_flow: nil,
            
      help_message: nil,
            
      optin_keywords: nil,
            
      optout_keywords: nil,
            
      help_keywords: nil,
            
      optin_message: nil,
            
      optout_message: nil,
            
      )
      expect(instance.valid?).to eq(false)
    end

    it 'checks if model is empty' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new()
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "TS",
          campaign_id: "TS",
          status: "ACTIVE",
          brand_id: "TS",
          usecase: "TS",
          description: "TS",
          embedded_link: true,
          embedded_phone: true,
          affiliate_marketing: true,
          number_pool: true,
          age_gated: true,
          direct_lending: true,
          subscriber_optin: true,
          subscriber_optout: true,
          subscriber_help: true,
          sample1: "TS",
          sample2: "TS",
          sample3: "TS",
          sample4: "TS",
          sample5: "TS",
          message_flow: "TS",
          help_message: "TS",
          optin_keywords: "TS",
          optout_keywords: "TS",
          help_keywords: "TS",
          optin_message: "TS",
          optout_message: "TS",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaign.new(
          account_id: "ST",
          campaign_id: "ST",
          status: "EXPIRED",
          brand_id: "ST",
          usecase: "ST",
          description: "ST",
          embedded_link: false,
          embedded_phone: false,
          affiliate_marketing: false,
          number_pool: false,
          age_gated: false,
          direct_lending: false,
          subscriber_optin: false,
          subscriber_optout: false,
          subscriber_help: false,
          sample1: "ST",
          sample2: "ST",
          sample3: "ST",
          sample4: "ST",
          sample5: "ST",
          message_flow: "ST",
          help_message: "ST",
          optin_keywords: "ST",
          optout_keywords: "ST",
          help_keywords: "ST",
          optin_message: "ST",
          optout_message: "ST",
          brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
      account_id: "TS",
      campaign_id: "TS",
      status: "ACTIVE",
      create_date: "2022-07-05T15:17:05Z",
      brand_id: "TS",
      usecase: "TS",
      description: "TS",
      embedded_link: true,
      embedded_phone: true,
      affiliate_marketing: true,
      number_pool: true,
      age_gated: true,
      direct_lending: true,
      subscriber_optin: true,
      subscriber_optout: true,
      subscriber_help: true,
      sample1: "TS",
      sample2: "TS",
      sample3: "TS",
      sample4: "TS",
      sample5: "TS",
      message_flow: "TS",
      help_message: "TS",
      optin_keywords: "TS",
      optout_keywords: "TS",
      help_keywords: "TS",
      optin_message: "TS",
      optout_message: "TS",
      brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new(),
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaign.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
    )
    it 'deserializes the data of account_id' do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of campaign_id' do
      expect(instance._deserialize("String", instance.campaign_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of status' do
      expect(instance._deserialize("String", instance.status)).to be_a_kind_of(String)
    end
    it 'deserializes the data of create_date' do
      expect(instance._deserialize("Time", instance.create_date)).to be_a_kind_of(Time)
    end
    it 'deserializes the data of brand_id' do
      expect(instance._deserialize("String", instance.brand_id)).to be_a_kind_of(String)
    end
    it 'deserializes the data of usecase' do
      expect(instance._deserialize("String", instance.usecase)).to be_a_kind_of(String)
    end
    it 'deserializes the data of description' do
      expect(instance._deserialize("String", instance.description)).to be_a_kind_of(String)
    end
    it 'deserializes the data of embedded_link' do
      expect(instance._deserialize("Boolean", instance.embedded_link)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of embedded_phone' do
      expect(instance._deserialize("Boolean", instance.embedded_phone)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of affiliate_marketing' do
      expect(instance._deserialize("Boolean", instance.affiliate_marketing)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of number_pool' do
      expect(instance._deserialize("Boolean", instance.number_pool)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of age_gated' do
      expect(instance._deserialize("Boolean", instance.age_gated)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of direct_lending' do
      expect(instance._deserialize("Boolean", instance.direct_lending)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of subscriber_optin' do
      expect(instance._deserialize("Boolean", instance.subscriber_optin)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of subscriber_optout' do
      expect(instance._deserialize("Boolean", instance.subscriber_optout)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of subscriber_help' do
      expect(instance._deserialize("Boolean", instance.subscriber_help)).to be_a_kind_of(TrueClass)
    end
    it 'deserializes the data of sample1' do
      expect(instance._deserialize("String", instance.sample1)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sample2' do
      expect(instance._deserialize("String", instance.sample2)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sample3' do
      expect(instance._deserialize("String", instance.sample3)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sample4' do
      expect(instance._deserialize("String", instance.sample4)).to be_a_kind_of(String)
    end
    it 'deserializes the data of sample5' do
      expect(instance._deserialize("String", instance.sample5)).to be_a_kind_of(String)
    end
    it 'deserializes the data of message_flow' do
      expect(instance._deserialize("String", instance.message_flow)).to be_a_kind_of(String)
    end
    it 'deserializes the data of help_message' do
      expect(instance._deserialize("String", instance.help_message)).to be_a_kind_of(String)
    end
    it 'deserializes the data of optin_keywords' do
      expect(instance._deserialize("String", instance.optin_keywords)).to be_a_kind_of(String)
    end
    it 'deserializes the data of optout_keywords' do
      expect(instance._deserialize("String", instance.optout_keywords)).to be_a_kind_of(String)
    end
    it 'deserializes the data of help_keywords' do
      expect(instance._deserialize("String", instance.help_keywords)).to be_a_kind_of(String)
    end
    it 'deserializes the data of optin_message' do
      expect(instance._deserialize("String", instance.optin_message)).to be_a_kind_of(String)
    end
    it 'deserializes the data of optout_message' do
      expect(instance._deserialize("String", instance.optout_message)).to be_a_kind_of(String)
    end
    it 'deserializes the data of brand' do
      expect(instance._deserialize("Object", instance.brand)).to be_a_kind_of(Freeclimb::SMSTenDLCPartnerCampaignBrand)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
      )
      instance_2 = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
        campaign_id: "TS",
        status: "ACTIVE",
        create_date: "2022-07-05T15:17:05Z",
        brand_id: "TS",
        usecase: "TS",
        description: "TS",
        embedded_link: true,
        embedded_phone: true,
        affiliate_marketing: true,
        number_pool: true,
        age_gated: true,
        direct_lending: true,
        subscriber_optin: true,
        subscriber_optout: true,
        subscriber_help: true,
        sample1: "TS",
        sample2: "TS",
        sample3: "TS",
        sample4: "TS",
        sample5: "TS",
        message_flow: "TS",
        help_message: "TS",
        optin_keywords: "TS",
        optout_keywords: "TS",
        help_keywords: "TS",
        optin_message: "TS",
        optout_message: "TS",
        brand: Freeclimb::SMSTenDLCPartnerCampaignBrand.new,
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::SMSTenDLCPartnerCampaign.new(
        account_id: "TS",
      
        campaign_id: "TS",
      
        status: "ACTIVE",
      
        create_date: "2022-07-05T15:17:05Z",
      
        brand_id: "TS",
      
        usecase: "TS",
      
        description: "TS",
      
        embedded_link: true,
      
        embedded_phone: true,
      
        affiliate_marketing: true,
      
        number_pool: true,
      
        age_gated: true,
      
        direct_lending: true,
      
        subscriber_optin: true,
      
        subscriber_optout: true,
      
        subscriber_help: true,
      
        sample1: "TS",
      
        sample2: "TS",
      
        sample3: "TS",
      
        sample4: "TS",
      
        sample5: "TS",
      
        message_flow: "TS",
      
        help_message: "TS",
      
        optin_keywords: "TS",
      
        optout_keywords: "TS",
      
        help_keywords: "TS",
      
        optin_message: "TS",
      
        optout_message: "TS",
      
      )
    it 'returns account_id in the form of hash' do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it 'returns campaign_id in the form of hash' do
      expect(instance._to_hash(instance.campaign_id)).to eq(instance.campaign_id)
    end
    it 'returns status in the form of hash' do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
    it 'returns create_date in the form of hash' do
      expect(instance._to_hash(instance.create_date)).to eq(instance.create_date)
    end
    it 'returns brand_id in the form of hash' do
      expect(instance._to_hash(instance.brand_id)).to eq(instance.brand_id)
    end
    it 'returns usecase in the form of hash' do
      expect(instance._to_hash(instance.usecase)).to eq(instance.usecase)
    end
    it 'returns description in the form of hash' do
      expect(instance._to_hash(instance.description)).to eq(instance.description)
    end
    it 'returns embedded_link in the form of hash' do
      expect(instance._to_hash(instance.embedded_link)).to eq(instance.embedded_link)
    end
    it 'returns embedded_phone in the form of hash' do
      expect(instance._to_hash(instance.embedded_phone)).to eq(instance.embedded_phone)
    end
    it 'returns affiliate_marketing in the form of hash' do
      expect(instance._to_hash(instance.affiliate_marketing)).to eq(instance.affiliate_marketing)
    end
    it 'returns number_pool in the form of hash' do
      expect(instance._to_hash(instance.number_pool)).to eq(instance.number_pool)
    end
    it 'returns age_gated in the form of hash' do
      expect(instance._to_hash(instance.age_gated)).to eq(instance.age_gated)
    end
    it 'returns direct_lending in the form of hash' do
      expect(instance._to_hash(instance.direct_lending)).to eq(instance.direct_lending)
    end
    it 'returns subscriber_optin in the form of hash' do
      expect(instance._to_hash(instance.subscriber_optin)).to eq(instance.subscriber_optin)
    end
    it 'returns subscriber_optout in the form of hash' do
      expect(instance._to_hash(instance.subscriber_optout)).to eq(instance.subscriber_optout)
    end
    it 'returns subscriber_help in the form of hash' do
      expect(instance._to_hash(instance.subscriber_help)).to eq(instance.subscriber_help)
    end
    it 'returns sample1 in the form of hash' do
      expect(instance._to_hash(instance.sample1)).to eq(instance.sample1)
    end
    it 'returns sample2 in the form of hash' do
      expect(instance._to_hash(instance.sample2)).to eq(instance.sample2)
    end
    it 'returns sample3 in the form of hash' do
      expect(instance._to_hash(instance.sample3)).to eq(instance.sample3)
    end
    it 'returns sample4 in the form of hash' do
      expect(instance._to_hash(instance.sample4)).to eq(instance.sample4)
    end
    it 'returns sample5 in the form of hash' do
      expect(instance._to_hash(instance.sample5)).to eq(instance.sample5)
    end
    it 'returns message_flow in the form of hash' do
      expect(instance._to_hash(instance.message_flow)).to eq(instance.message_flow)
    end
    it 'returns help_message in the form of hash' do
      expect(instance._to_hash(instance.help_message)).to eq(instance.help_message)
    end
    it 'returns optin_keywords in the form of hash' do
      expect(instance._to_hash(instance.optin_keywords)).to eq(instance.optin_keywords)
    end
    it 'returns optout_keywords in the form of hash' do
      expect(instance._to_hash(instance.optout_keywords)).to eq(instance.optout_keywords)
    end
    it 'returns help_keywords in the form of hash' do
      expect(instance._to_hash(instance.help_keywords)).to eq(instance.help_keywords)
    end
    it 'returns optin_message in the form of hash' do
      expect(instance._to_hash(instance.optin_message)).to eq(instance.optin_message)
    end
    it 'returns optout_message in the form of hash' do
      expect(instance._to_hash(instance.optout_message)).to eq(instance.optout_message)
    end
    it 'returns brand in the form of hash' do
      expect(instance._to_hash(instance.brand)).to eq(instance.brand)
    end
  end

end
