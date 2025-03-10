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

# Unit tests for Freeclimb::QueueResultStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::QueueResultStatus do
  let(:instance) { Freeclimb::QueueResultStatus.new }

  describe "test an instance of QueueResultStatus" do
    it "should create an instance of QueueResultStatus" do
      expect(instance).to be_instance_of(Freeclimb::QueueResultStatus)
    end
  end

  describe 'test attribute "QUEUE_FULL"' do
    it "should work" do
      expect { Freeclimb::QueueResultStatus::QUEUE_FULL = "queueFull" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::QueueResultStatus::QUEUE_FULL
      calculatedValue = Freeclimb::QueueResultStatus.build_from_hash("queueFull")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "queueFull"
      calculatedValue = Freeclimb::QueueResultStatus::QUEUE_FULL
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DEQUEUED"' do
    it "should work" do
      expect { Freeclimb::QueueResultStatus::DEQUEUED = "dequeued" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::QueueResultStatus::DEQUEUED
      calculatedValue = Freeclimb::QueueResultStatus.build_from_hash("dequeued")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "dequeued"
      calculatedValue = Freeclimb::QueueResultStatus::DEQUEUED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "HANGUP"' do
    it "should work" do
      expect { Freeclimb::QueueResultStatus::HANGUP = "hangup" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::QueueResultStatus::HANGUP
      calculatedValue = Freeclimb::QueueResultStatus.build_from_hash("hangup")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "hangup"
      calculatedValue = Freeclimb::QueueResultStatus::HANGUP
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "SYSTEM_ERROR"' do
    it "should work" do
      expect { Freeclimb::QueueResultStatus::SYSTEM_ERROR = "systemError" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::QueueResultStatus::SYSTEM_ERROR
      calculatedValue = Freeclimb::QueueResultStatus.build_from_hash("systemError")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "systemError"
      calculatedValue = Freeclimb::QueueResultStatus::SYSTEM_ERROR
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
