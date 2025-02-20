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

# Unit tests for Freeclimb::ConferenceStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ConferenceStatus do
  let(:instance) { Freeclimb::ConferenceStatus.new }

  describe "test an instance of ConferenceStatus" do
    it "should create an instance of ConferenceStatus" do
      expect(instance).to be_instance_of(Freeclimb::ConferenceStatus)
    end
  end

  describe 'test attribute "EMPTY"' do
    it "should work" do
      expect { Freeclimb::ConferenceStatus::EMPTY = "empty" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::ConferenceStatus::EMPTY
      calculatedValue = Freeclimb::ConferenceStatus.build_from_hash("empty")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "empty"
      calculatedValue = Freeclimb::ConferenceStatus::EMPTY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "POPULATED"' do
    it "should work" do
      expect { Freeclimb::ConferenceStatus::POPULATED = "populated" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::ConferenceStatus::POPULATED
      calculatedValue = Freeclimb::ConferenceStatus.build_from_hash("populated")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "populated"
      calculatedValue = Freeclimb::ConferenceStatus::POPULATED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "IN_PROGRESS"' do
    it "should work" do
      expect { Freeclimb::ConferenceStatus::IN_PROGRESS = "inProgress" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::ConferenceStatus::IN_PROGRESS
      calculatedValue = Freeclimb::ConferenceStatus.build_from_hash("inProgress")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "inProgress"
      calculatedValue = Freeclimb::ConferenceStatus::IN_PROGRESS
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "TERMINATED"' do
    it "should work" do
      expect { Freeclimb::ConferenceStatus::TERMINATED = "terminated" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::ConferenceStatus::TERMINATED
      calculatedValue = Freeclimb::ConferenceStatus.build_from_hash("terminated")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "terminated"
      calculatedValue = Freeclimb::ConferenceStatus::TERMINATED
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
