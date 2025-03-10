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

# Unit tests for Freeclimb::IncomingNumberRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::IncomingNumberRequest do
  let(:instance) { Freeclimb::IncomingNumberRequest.new }

  describe "test an instance of IncomingNumberRequest" do
    it "should create an instance of IncomingNumberRequest" do
      expect(instance).to be_instance_of(Freeclimb::IncomingNumberRequest)
    end
  end

  describe 'test attribute "application_id"' do
    it "should work" do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "_alias"' do
    it "should work" do
      instance._alias = "TEST_STRING"
      expect(instance._alias).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "campaign_id"' do
    it "should work" do
      instance.campaign_id = "TEST_STRING"
      expect(instance.campaign_id).to eq("TEST_STRING")
    end
  end

  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::IncomingNumberRequest.new(
          application_id: "TS",

          _alias: "TS",

          campaign_id: "TS"
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::IncomingNumberRequest" do
      expect {
        Freeclimb::IncomingNumberRequest.new(
          application_id: "TS",

          _alias: "TS",

          campaign_id: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::IncomingNumberRequest.new(
          application_id: "TS",

          _alias: "TS",

          campaign_id: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::IncomingNumberRequest.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      instance_1 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      instance_2 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      instance_2 = Freeclimb::IncomingNumberRequest.new(
        application_id: "ST",

        _alias: "ST",

        campaign_id: "ST"
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      instance_2 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::IncomingNumberRequest.new(
      application_id: "TS",

      _alias: "TS",

      campaign_id: "TS"
    )
    it "deserializes the data of application_id" do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of _alias" do
      expect(instance._deserialize("String", instance._alias)).to be_a_kind_of(String)
    end

    it "deserializes the data of campaign_id" do
      expect(instance._deserialize("String", instance.campaign_id)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      instance_1 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      instance_2 = Freeclimb::IncomingNumberRequest.new(
        application_id: "TS",

        _alias: "TS",

        campaign_id: "TS"
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::IncomingNumberRequest.new(
      application_id: "TS",

      _alias: "TS",

      campaign_id: "TS"
    )
    it "returns application_id in the form of hash" do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
    it "returns _alias in the form of hash" do
      expect(instance._to_hash(instance._alias)).to eq(instance._alias)
    end
    it "returns campaign_id in the form of hash" do
      expect(instance._to_hash(instance.campaign_id)).to eq(instance.campaign_id)
    end
  end
end
