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

# Unit tests for Freeclimb::GrammarType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::GrammarType do
  let(:instance) { Freeclimb::GrammarType.new }

  describe "test an instance of GrammarType" do
    it "should create an instance of GrammarType" do
      expect(instance).to be_instance_of(Freeclimb::GrammarType)
    end
  end

  describe 'test attribute "URL"' do
    it "should work" do
      expect { Freeclimb::GrammarType::URL = "URL" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::GrammarType::URL
      calculatedValue = Freeclimb::GrammarType.build_from_hash("URL")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "URL"
      calculatedValue = Freeclimb::GrammarType::URL
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "BUILT_IN"' do
    it "should work" do
      expect { Freeclimb::GrammarType::BUILT_IN = "BUILTIN" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::GrammarType::BUILT_IN
      calculatedValue = Freeclimb::GrammarType.build_from_hash("BUILTIN")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "BUILTIN"
      calculatedValue = Freeclimb::GrammarType::BUILT_IN
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
