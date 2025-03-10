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

# Unit tests for Freeclimb::CompletionResultStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::CompletionResultStatus do
  let(:instance) { Freeclimb::CompletionResultStatus.new }

  describe "test an instance of CompletionResultStatus" do
    it "should create an instance of CompletionResultStatus" do
      expect(instance).to be_instance_of(Freeclimb::CompletionResultStatus)
    end
  end

  describe 'test attribute "SUCCESS"' do
    it "should work" do
      expect { Freeclimb::CompletionResultStatus::SUCCESS = "success" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CompletionResultStatus::SUCCESS
      calculatedValue = Freeclimb::CompletionResultStatus.build_from_hash("success")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "success"
      calculatedValue = Freeclimb::CompletionResultStatus::SUCCESS
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "NO_CONTEXT"' do
    it "should work" do
      expect { Freeclimb::CompletionResultStatus::NO_CONTEXT = "no_context" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CompletionResultStatus::NO_CONTEXT
      calculatedValue = Freeclimb::CompletionResultStatus.build_from_hash("no_context")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "no_context"
      calculatedValue = Freeclimb::CompletionResultStatus::NO_CONTEXT
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
