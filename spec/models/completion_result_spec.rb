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

# Unit tests for Freeclimb::CompletionResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::CompletionResult do
  let(:instance) { Freeclimb::CompletionResult.new }

  describe "test an instance of CompletionResult" do
    it "should create an instance of CompletionResult" do
      expect(instance).to be_instance_of(Freeclimb::CompletionResult)
    end
  end

  describe 'test attribute "response"' do
    it "should work" do
      instance.response = "TEST_STRING"
      expect(instance.response).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "status"' do
    it "assigns value SUCCESS" do
      instance.status = Freeclimb::CompletionResultStatus::SUCCESS
      expect(instance.status).to eq(Freeclimb::CompletionResultStatus::SUCCESS)
    end
    it "assigns value NO_CONTEXT" do
      instance.status = Freeclimb::CompletionResultStatus::NO_CONTEXT
      expect(instance.status).to eq(Freeclimb::CompletionResultStatus::NO_CONTEXT)
    end
  end
  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::CompletionResult.new(
          response: "TS",

          status: Freeclimb::CompletionResultStatus::SUCCESS
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::CompletionResult" do
      expect {
        Freeclimb::CompletionResult.new(
          response: "TS",

          status: Freeclimb::CompletionResultStatus::SUCCESS,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::CompletionResult.new(
          response: "TS",

          status: Freeclimb::CompletionResultStatus::SUCCESS,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::CompletionResult.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      instance_1 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      instance_2 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      instance_2 = Freeclimb::CompletionResult.new(
        response: "ST",

        status: nil
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      instance_2 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::CompletionResult.new(
      response: "TS",

      status: Freeclimb::CompletionResultStatus::SUCCESS
    )
    it "deserializes the data of response" do
      expect(instance._deserialize("String", instance.response)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      instance_1 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      instance_2 = Freeclimb::CompletionResult.new(
        response: "TS",

        status: Freeclimb::CompletionResultStatus::SUCCESS
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::CompletionResult.new(
      response: "TS",

      status: Freeclimb::CompletionResultStatus::SUCCESS
    )
    it "returns response in the form of hash" do
      expect(instance._to_hash(instance.response)).to eq(instance.response)
    end
    it "returns status in the form of hash" do
      expect(instance._to_hash(instance.status)).to eq(instance.status)
    end
  end
end
