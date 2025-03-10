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

# Unit tests for Freeclimb::SMSTollFreeCampaignRegistrationStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTollFreeCampaignRegistrationStatus do
  let(:instance) { Freeclimb::SMSTollFreeCampaignRegistrationStatus.new }

  describe "test an instance of SMSTollFreeCampaignRegistrationStatus" do
    it "should create an instance of SMSTollFreeCampaignRegistrationStatus" do
      expect(instance).to be_instance_of(Freeclimb::SMSTollFreeCampaignRegistrationStatus)
    end
  end

  describe 'test attribute "UNREGISTERED"' do
    it "should work" do
      expect { Freeclimb::SMSTollFreeCampaignRegistrationStatus::UNREGISTERED = "UNREGISTERED" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::UNREGISTERED
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus.build_from_hash("UNREGISTERED")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "UNREGISTERED"
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::UNREGISTERED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "INITIATED"' do
    it "should work" do
      expect { Freeclimb::SMSTollFreeCampaignRegistrationStatus::INITIATED = "INITIATED" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::INITIATED
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus.build_from_hash("INITIATED")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "INITIATED"
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::INITIATED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "PENDING"' do
    it "should work" do
      expect { Freeclimb::SMSTollFreeCampaignRegistrationStatus::PENDING = "PENDING" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::PENDING
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus.build_from_hash("PENDING")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "PENDING"
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::PENDING
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DECLINED"' do
    it "should work" do
      expect { Freeclimb::SMSTollFreeCampaignRegistrationStatus::DECLINED = "DECLINED" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::DECLINED
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus.build_from_hash("DECLINED")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "DECLINED"
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::DECLINED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "REGISTERED"' do
    it "should work" do
      expect { Freeclimb::SMSTollFreeCampaignRegistrationStatus::REGISTERED = "REGISTERED" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::REGISTERED
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus.build_from_hash("REGISTERED")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "REGISTERED"
      calculatedValue = Freeclimb::SMSTollFreeCampaignRegistrationStatus::REGISTERED
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
