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

# Unit tests for Freeclimb::SMSTenDLCCampaignStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTenDLCCampaignStatus do
  let(:instance) { Freeclimb::SMSTenDLCCampaignStatus.new }

  describe "test an instance of SMSTenDLCCampaignStatus" do
    it "should create an instance of SMSTenDLCCampaignStatus" do
      expect(instance).to be_instance_of(Freeclimb::SMSTenDLCCampaignStatus)
    end
  end

  describe 'test attribute "ACTIVE"' do
    it "should work" do
      expect { Freeclimb::SMSTenDLCCampaignStatus::ACTIVE = "ACTIVE" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTenDLCCampaignStatus::ACTIVE
      calculatedValue = Freeclimb::SMSTenDLCCampaignStatus.build_from_hash("ACTIVE")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "ACTIVE"
      calculatedValue = Freeclimb::SMSTenDLCCampaignStatus::ACTIVE
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "EXPIRED"' do
    it "should work" do
      expect { Freeclimb::SMSTenDLCCampaignStatus::EXPIRED = "EXPIRED" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTenDLCCampaignStatus::EXPIRED
      calculatedValue = Freeclimb::SMSTenDLCCampaignStatus.build_from_hash("EXPIRED")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "EXPIRED"
      calculatedValue = Freeclimb::SMSTenDLCCampaignStatus::EXPIRED
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
