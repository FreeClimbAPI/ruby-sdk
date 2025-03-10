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

# Unit tests for Freeclimb::TranscribeReason
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::TranscribeReason do
  let(:instance) { Freeclimb::TranscribeReason.new }

  describe "test an instance of TranscribeReason" do
    it "should create an instance of TranscribeReason" do
      expect(instance).to be_instance_of(Freeclimb::TranscribeReason)
    end
  end

  describe 'test attribute "INTERNAL_ERROR"' do
    it "should work" do
      expect { Freeclimb::TranscribeReason::INTERNAL_ERROR = "internalError" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::TranscribeReason::INTERNAL_ERROR
      calculatedValue = Freeclimb::TranscribeReason.build_from_hash("internalError")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "internalError"
      calculatedValue = Freeclimb::TranscribeReason::INTERNAL_ERROR
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "HANGUP"' do
    it "should work" do
      expect { Freeclimb::TranscribeReason::HANGUP = "hangup" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::TranscribeReason::HANGUP
      calculatedValue = Freeclimb::TranscribeReason.build_from_hash("hangup")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "hangup"
      calculatedValue = Freeclimb::TranscribeReason::HANGUP
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "MAX_LENGTH"' do
    it "should work" do
      expect { Freeclimb::TranscribeReason::MAX_LENGTH = "maxLength" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::TranscribeReason::MAX_LENGTH
      calculatedValue = Freeclimb::TranscribeReason.build_from_hash("maxLength")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "maxLength"
      calculatedValue = Freeclimb::TranscribeReason::MAX_LENGTH
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIGIT"' do
    it "should work" do
      expect { Freeclimb::TranscribeReason::DIGIT = "digit" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::TranscribeReason::DIGIT
      calculatedValue = Freeclimb::TranscribeReason.build_from_hash("digit")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "digit"
      calculatedValue = Freeclimb::TranscribeReason::DIGIT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "NO_INPUT"' do
    it "should work" do
      expect { Freeclimb::TranscribeReason::NO_INPUT = "noInput" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::TranscribeReason::NO_INPUT
      calculatedValue = Freeclimb::TranscribeReason.build_from_hash("noInput")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "noInput"
      calculatedValue = Freeclimb::TranscribeReason::NO_INPUT
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
