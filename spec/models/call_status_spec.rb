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

# Unit tests for Freeclimb::CallStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::CallStatus do
  let(:instance) { Freeclimb::CallStatus.new }

  describe "test an instance of CallStatus" do
    it "should create an instance of CallStatus" do
      expect(instance).to be_instance_of(Freeclimb::CallStatus)
    end
  end

  describe 'test attribute "QUEUED"' do
    it "should work" do
      expect { Freeclimb::CallStatus::QUEUED = "queued" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::QUEUED
      calculatedValue = Freeclimb::CallStatus.build_from_hash("queued")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "queued"
      calculatedValue = Freeclimb::CallStatus::QUEUED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "RINGING"' do
    it "should work" do
      expect { Freeclimb::CallStatus::RINGING = "ringing" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::RINGING
      calculatedValue = Freeclimb::CallStatus.build_from_hash("ringing")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "ringing"
      calculatedValue = Freeclimb::CallStatus::RINGING
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "IN_PROGRESS"' do
    it "should work" do
      expect { Freeclimb::CallStatus::IN_PROGRESS = "inProgress" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::IN_PROGRESS
      calculatedValue = Freeclimb::CallStatus.build_from_hash("inProgress")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "inProgress"
      calculatedValue = Freeclimb::CallStatus::IN_PROGRESS
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "CANCELED"' do
    it "should work" do
      expect { Freeclimb::CallStatus::CANCELED = "canceled" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::CANCELED
      calculatedValue = Freeclimb::CallStatus.build_from_hash("canceled")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "canceled"
      calculatedValue = Freeclimb::CallStatus::CANCELED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "COMPLETED"' do
    it "should work" do
      expect { Freeclimb::CallStatus::COMPLETED = "completed" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::COMPLETED
      calculatedValue = Freeclimb::CallStatus.build_from_hash("completed")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "completed"
      calculatedValue = Freeclimb::CallStatus::COMPLETED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "FAILED"' do
    it "should work" do
      expect { Freeclimb::CallStatus::FAILED = "failed" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::FAILED
      calculatedValue = Freeclimb::CallStatus.build_from_hash("failed")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "failed"
      calculatedValue = Freeclimb::CallStatus::FAILED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "BUSY"' do
    it "should work" do
      expect { Freeclimb::CallStatus::BUSY = "busy" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::BUSY
      calculatedValue = Freeclimb::CallStatus.build_from_hash("busy")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "busy"
      calculatedValue = Freeclimb::CallStatus::BUSY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "NO_ANSWER"' do
    it "should work" do
      expect { Freeclimb::CallStatus::NO_ANSWER = "noAnswer" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::CallStatus::NO_ANSWER
      calculatedValue = Freeclimb::CallStatus.build_from_hash("noAnswer")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "noAnswer"
      calculatedValue = Freeclimb::CallStatus::NO_ANSWER
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
