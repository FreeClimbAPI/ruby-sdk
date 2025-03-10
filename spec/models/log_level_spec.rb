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

# Unit tests for Freeclimb::LogLevel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::LogLevel do
  let(:instance) { Freeclimb::LogLevel.new }

  describe "test an instance of LogLevel" do
    it "should create an instance of LogLevel" do
      expect(instance).to be_instance_of(Freeclimb::LogLevel)
    end
  end

  describe 'test attribute "INFO"' do
    it "should work" do
      expect { Freeclimb::LogLevel::INFO = "info" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::LogLevel::INFO
      calculatedValue = Freeclimb::LogLevel.build_from_hash("info")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "info"
      calculatedValue = Freeclimb::LogLevel::INFO
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "WARNING"' do
    it "should work" do
      expect { Freeclimb::LogLevel::WARNING = "warning" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::LogLevel::WARNING
      calculatedValue = Freeclimb::LogLevel.build_from_hash("warning")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "warning"
      calculatedValue = Freeclimb::LogLevel::WARNING
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "ERROR"' do
    it "should work" do
      expect { Freeclimb::LogLevel::ERROR = "error" }.not_to raise_error
    end
    it "should serialize to enum" do
      expectedValue = Freeclimb::LogLevel::ERROR
      calculatedValue = Freeclimb::LogLevel.build_from_hash("error")
      expect(expectedValue).to eq(calculatedValue)
    end
    it "should deserialize to string" do
      expectedValue = "error"
      calculatedValue = Freeclimb::LogLevel::ERROR
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
