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

# Unit tests for Freeclimb::AvailableNumber
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AvailableNumber do
  let(:instance) { Freeclimb::AvailableNumber.new }

  describe "test an instance of AvailableNumber" do
    it "should create an instance of AvailableNumber" do
      expect(instance).to be_instance_of(Freeclimb::AvailableNumber)
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

  describe 'test attribute "phone_number"' do
    it "should work" do
      instance.phone_number = "TEST_STRING"
      expect(instance.phone_number).to eq("TEST_STRING")
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

  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::AvailableNumber.new(
          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number: "TS",

          voice_enabled: true,

          sms_enabled: true,

          region: "TS",

          country: "TS"
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::AvailableNumber" do
      expect {
        Freeclimb::AvailableNumber.new(
          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number: "TS",

          voice_enabled: true,

          sms_enabled: true,

          region: "TS",

          country: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::AvailableNumber.new(
          capabilities: Capabilities.new,

          campaign_id: "TS",

          phone_number: "TS",

          voice_enabled: true,

          sms_enabled: true,

          region: "TS",

          country: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::AvailableNumber.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      obj_Capabilities = Capabilities.new

      instance_1 = Freeclimb::AvailableNumber.new(
        capabilities: obj_Capabilities,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      instance_2 = Freeclimb::AvailableNumber.new(
        capabilities: obj_Capabilities,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      instance_2 = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "ST",

        phone_number: "ST",

        voice_enabled: false,

        sms_enabled: false,

        region: "ST",

        country: "ST"
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      instance_2 = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::AvailableNumber.new(
      capabilities: Capabilities.new,

      campaign_id: "TS",

      phone_number: "TS",

      voice_enabled: true,

      sms_enabled: true,

      region: "TS",

      country: "TS"
    )

    it "deserializes the data of capabilities" do
      expect(instance._deserialize("Object", instance.capabilities)).to be_a_kind_of(Capabilities)
    end

    it "deserializes the data of campaign_id" do
      expect(instance._deserialize("String", instance.campaign_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of phone_number" do
      expect(instance._deserialize("String", instance.phone_number)).to be_a_kind_of(String)
    end

    it "deserializes the data of voice_enabled" do
      expect(instance._deserialize("Boolean", instance.voice_enabled)).to be_a_kind_of(TrueClass)
    end

    it "deserializes the data of sms_enabled" do
      expect(instance._deserialize("Boolean", instance.sms_enabled)).to be_a_kind_of(TrueClass)
    end
    it "deserializes the data of region" do
      expect(instance._deserialize("String", instance.region)).to be_a_kind_of(String)
    end

    it "deserializes the data of country" do
      expect(instance._deserialize("String", instance.country)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::AvailableNumber.new(
        capabilities: Capabilities.new,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      obj = Capabilities.new

      instance_1 = Freeclimb::AvailableNumber.new(
        capabilities: obj,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      instance_2 = Freeclimb::AvailableNumber.new(
        capabilities: obj,

        campaign_id: "TS",

        phone_number: "TS",

        voice_enabled: true,

        sms_enabled: true,

        region: "TS",

        country: "TS"
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::AvailableNumber.new(
      campaign_id: "TS",

      phone_number: "TS",

      voice_enabled: true,

      sms_enabled: true,

      region: "TS",

      country: "TS"
    )
    it "returns capabilities in the form of hash" do
      expect(instance._to_hash(instance.capabilities)).to eq(instance.capabilities)
    end
    it "returns campaign_id in the form of hash" do
      expect(instance._to_hash(instance.campaign_id)).to eq(instance.campaign_id)
    end
    it "returns phone_number in the form of hash" do
      expect(instance._to_hash(instance.phone_number)).to eq(instance.phone_number)
    end
    it "returns voice_enabled in the form of hash" do
      expect(instance._to_hash(instance.voice_enabled)).to eq(instance.voice_enabled)
    end
    it "returns sms_enabled in the form of hash" do
      expect(instance._to_hash(instance.sms_enabled)).to eq(instance.sms_enabled)
    end
    it "returns region in the form of hash" do
      expect(instance._to_hash(instance.region)).to eq(instance.region)
    end
    it "returns country in the form of hash" do
      expect(instance._to_hash(instance.country)).to eq(instance.country)
    end
  end
end
