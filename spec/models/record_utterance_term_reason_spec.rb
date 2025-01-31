=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 7.9.0

=end

require 'spec_helper'
require 'json'
require 'date'
include Freeclimb

# Unit tests for Freeclimb::RecordUtteranceTermReason
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordUtteranceTermReason do
  let(:instance) { Freeclimb::RecordUtteranceTermReason.new }

  describe 'test an instance of RecordUtteranceTermReason' do
    it 'should create an instance of RecordUtteranceTermReason' do
      expect(instance).to be_instance_of(Freeclimb::RecordUtteranceTermReason)
    end
  end
  
  describe 'test attribute "FINISH_KEY"' do
    it 'should work' do
      expect { Freeclimb::RecordUtteranceTermReason::FINISH_KEY = "finishKey" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::RecordUtteranceTermReason::FINISH_KEY
      calculatedValue = Freeclimb::RecordUtteranceTermReason::build_from_hash("finishKey")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "finishKey"
      calculatedValue = Freeclimb::RecordUtteranceTermReason::FINISH_KEY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "TIMEOUT"' do
    it 'should work' do
      expect { Freeclimb::RecordUtteranceTermReason::TIMEOUT = "timeout" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::RecordUtteranceTermReason::TIMEOUT
      calculatedValue = Freeclimb::RecordUtteranceTermReason::build_from_hash("timeout")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "timeout"
      calculatedValue = Freeclimb::RecordUtteranceTermReason::TIMEOUT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "HANGUP"' do
    it 'should work' do
      expect { Freeclimb::RecordUtteranceTermReason::HANGUP = "hangup" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::RecordUtteranceTermReason::HANGUP
      calculatedValue = Freeclimb::RecordUtteranceTermReason::build_from_hash("hangup")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "hangup"
      calculatedValue = Freeclimb::RecordUtteranceTermReason::HANGUP
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "MAX_LENGTH"' do
    it 'should work' do
      expect { Freeclimb::RecordUtteranceTermReason::MAX_LENGTH = "maxLength" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::RecordUtteranceTermReason::MAX_LENGTH
      calculatedValue = Freeclimb::RecordUtteranceTermReason::build_from_hash("maxLength")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "maxLength"
      calculatedValue = Freeclimb::RecordUtteranceTermReason::MAX_LENGTH
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
