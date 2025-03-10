# #FreeClimb API
#
# FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.
#
# The version of the OpenAPI document: 1.0.0
# Contact: support@freeclimb.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.9.0
#

require "spec_helper"
require "json"
require "date"
include Freeclimb

# Unit tests for Freeclimb::IncomingNumberResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::IncomingNumberResult do
  let(:instance) { Freeclimb::IncomingNumberResult.new }

  describe "test an instance of IncomingNumberResult" do
    it "should create an instance of IncomingNumberResult" do
      expect(instance).to be_instance_of(Freeclimb::IncomingNumberResult)
    end
  end

  describe 'test attribute "uri"' do
    it "should work" do
      instance.uri = "TEST_STRING"
      expect(instance.uri).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "date_created"' do
    it "should work" do
      instance.date_created = "TEST_STRING"
      expect(instance.date_created).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "date_updated"' do
    it "should work" do
      instance.date_updated = "TEST_STRING"
      expect(instance.date_updated).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "revision"' do
    it "should work" do
      instance.revision = 1
      expect(instance.revision).to eq(1)
    end
  end

  describe 'test attribute "capabilities"' do
    it "should work" do
      instance.capabilities = Capabilities.new
      expect(instance.capabilities).to be_instance_of(Capabilities)
    end
  end

  describe 'test attribute "campaign_id"' do
    it "should work" do
      instance.campaign_id = "TEST_STRING"
      expect(instance.campaign_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "phone_number_id"' do
    it "should work" do
      instance.phone_number_id = "TEST_STRING"
      expect(instance.phone_number_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "account_id"' do
    it "should work" do
      instance.account_id = "TEST_STRING"
      expect(instance.account_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "application_id"' do
    it "should work" do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "phone_number"' do
    it "should work" do
      instance.phone_number = "TEST_STRING"
      expect(instance.phone_number).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "_alias"' do
    it "should work" do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "region"' do
    it "should work" do
      instance.region = "TEST_STRING"
      expect(instance.region).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "country"' do
    it "should work" do
      instance.country = "TEST_STRING"
      expect(instance.country).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "voice_enabled"' do
    it "should work" do
      instance.voice_enabled = false
      expect(instance.voice_enabled).to eq(false)
    end
  end

  describe 'test attribute "sms_enabled"' do
    it "should work" do
      instance.sms_enabled = false
      expect(instance.sms_enabled).to eq(false)
    end
  end

  describe 'test attribute "offnet"' do
    it "should work" do
      instance.offnet = false
      expect(instance.offnet).to eq(false)
    end
  end

  describe 'test attribute "tfn"' do
    it "should work" do
      instance.tfn = TFN.new
      expect(instance.tfn).to be_instance_of(TFN)
    end
  end

  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::IncomingNumberResult.new(
          uri: "TS",

          date_created: "TS",

          date_updated: "TS",

          revision: 1,

          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number_id: "TS",

          account_id: "TS",

          application_id: "TS",

          phone_number: "TS",

          _alias: "TS",

          region: "TS",

          country: "TS",

          voice_enabled: true,

          sms_enabled: true,

          offnet: true,

          tfn: TFN.new
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::IncomingNumberResult" do
      expect {
        Freeclimb::IncomingNumberResult.new(
          uri: "TS",

          date_created: "TS",

          date_updated: "TS",

          revision: 1,

          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number_id: "TS",

          account_id: "TS",

          application_id: "TS",

          phone_number: "TS",

          _alias: "TS",

          region: "TS",

          country: "TS",

          voice_enabled: true,

          sms_enabled: true,

          offnet: true,

          tfn: TFN.new,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::IncomingNumberResult.new(
          uri: "TS",

          date_created: "TS",

          date_updated: "TS",

          revision: 1,

          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number_id: "TS",

          account_id: "TS",

          application_id: "TS",

          phone_number: "TS",

          _alias: "TS",

          region: "TS",

          country: "TS",

          voice_enabled: true,

          sms_enabled: true,

          offnet: true,

          tfn: TFN.new,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::IncomingNumberResult.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      obj_Capabilities = Capabilities.new

      obj_TFN = TFN.new

      instance_1 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: obj_Capabilities,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: obj_TFN
      )
      instance_2 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: obj_Capabilities,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: obj_TFN
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 2,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      instance_2 = Freeclimb::IncomingNumberResult.new(
        uri: "ST",

        date_created: "ST",

        date_updated: "ST",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "ST",

        phone_number_id: "ST",

        account_id: "ST",

        application_id: "ST",

        phone_number: "ST",

        _alias: "ST",

        region: "ST",

        country: "ST",

        voice_enabled: false,

        sms_enabled: false,

        offnet: false,

        tfn: TFN.new
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      instance_2 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::IncomingNumberResult.new(
      uri: "TS",

      date_created: "TS",

      date_updated: "TS",

      revision: 1,

      capabilities: Capabilities.new,

      campaign_id: "TS",

      phone_number_id: "TS",

      account_id: "TS",

      application_id: "TS",

      phone_number: "TS",

      _alias: "TS",

      region: "TS",

      country: "TS",

      voice_enabled: true,

      sms_enabled: true,

      offnet: true,

      tfn: TFN.new
    )
    it "deserializes the data of uri" do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end

    it "deserializes the data of date_created" do
      expect(instance._deserialize("String", instance.date_created)).to be_a_kind_of(String)
    end

    it "deserializes the data of date_updated" do
      expect(instance._deserialize("String", instance.date_updated)).to be_a_kind_of(String)
    end

    it "deserializes the data of revision" do
      expect(instance._deserialize("Integer", instance.revision)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of capabilities" do
      expect(instance._deserialize("Object", instance.capabilities)).to be_a_kind_of(Capabilities)
    end

    it "deserializes the data of campaign_id" do
      expect(instance._deserialize("String", instance.campaign_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of phone_number_id" do
      expect(instance._deserialize("String", instance.phone_number_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of account_id" do
      expect(instance._deserialize("String", instance.account_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of application_id" do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of phone_number" do
      expect(instance._deserialize("String", instance.phone_number)).to be_a_kind_of(String)
    end

    it "deserializes the data of _alias" do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end

    it "deserializes the data of region" do
      expect(instance._deserialize("String", instance.region)).to be_a_kind_of(String)
    end

    it "deserializes the data of country" do
      expect(instance._deserialize("String", instance.country)).to be_a_kind_of(String)
    end

    it "deserializes the data of voice_enabled" do
      expect(instance._deserialize("Boolean", instance.voice_enabled)).to be_a_kind_of(TrueClass)
    end

    it "deserializes the data of sms_enabled" do
      expect(instance._deserialize("Boolean", instance.sms_enabled)).to be_a_kind_of(TrueClass)
    end

    it "deserializes the data of offnet" do
      expect(instance._deserialize("Boolean", instance.offnet)).to be_a_kind_of(TrueClass)
    end

    it "deserializes the data of tfn" do
      expect(instance._deserialize("Object", instance.tfn)).to be_a_kind_of(TFN)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: TFN.new
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      Capabilities.new

      obj = TFN.new

      instance_1 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: obj,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: obj
      )
      instance_2 = Freeclimb::IncomingNumberResult.new(
        uri: "TS",

        date_created: "TS",

        date_updated: "TS",

        revision: 1,

        capabilities: obj,

        campaign_id: "TS",

        phone_number_id: "TS",

        account_id: "TS",

        application_id: "TS",

        phone_number: "TS",

        _alias: "TS",

        region: "TS",

        country: "TS",

        voice_enabled: true,

        sms_enabled: true,

        offnet: true,

        tfn: obj
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::IncomingNumberResult.new(
      uri: "TS",

      date_created: "TS",

      date_updated: "TS",

      revision: 1,

      campaign_id: "TS",

      phone_number_id: "TS",

      account_id: "TS",

      application_id: "TS",

      phone_number: "TS",

      _alias: "TS",

      region: "TS",

      country: "TS",

      voice_enabled: true,

      sms_enabled: true,

      offnet: true
    )
    it "returns uri in the form of hash" do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
    it "returns date_created in the form of hash" do
      expect(instance._to_hash(instance.date_created)).to eq(instance.date_created)
    end
    it "returns date_updated in the form of hash" do
      expect(instance._to_hash(instance.date_updated)).to eq(instance.date_updated)
    end
    it "returns revision in the form of hash" do
      expect(instance._to_hash(instance.revision)).to eq(instance.revision)
    end
    it "returns capabilities in the form of hash" do
      expect(instance._to_hash(instance.capabilities)).to eq(instance.capabilities)
    end
    it "returns campaign_id in the form of hash" do
      expect(instance._to_hash(instance.campaign_id)).to eq(instance.campaign_id)
    end
    it "returns phone_number_id in the form of hash" do
      expect(instance._to_hash(instance.phone_number_id)).to eq(instance.phone_number_id)
    end
    it "returns account_id in the form of hash" do
      expect(instance._to_hash(instance.account_id)).to eq(instance.account_id)
    end
    it "returns application_id in the form of hash" do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
    it "returns phone_number in the form of hash" do
      expect(instance._to_hash(instance.phone_number)).to eq(instance.phone_number)
    end
    it "returns _alias in the form of hash" do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it "returns region in the form of hash" do
      expect(instance._to_hash(instance.region)).to eq(instance.region)
    end
    it "returns country in the form of hash" do
      expect(instance._to_hash(instance.country)).to eq(instance.country)
    end
    it "returns voice_enabled in the form of hash" do
      expect(instance._to_hash(instance.voice_enabled)).to eq(instance.voice_enabled)
    end
    it "returns sms_enabled in the form of hash" do
      expect(instance._to_hash(instance.sms_enabled)).to eq(instance.sms_enabled)
    end
    it "returns offnet in the form of hash" do
      expect(instance._to_hash(instance.offnet)).to eq(instance.offnet)
    end
    it "returns tfn in the form of hash" do
      expect(instance._to_hash(instance.tfn)).to eq(instance.tfn)
    end
  end
end
