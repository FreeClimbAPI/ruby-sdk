=begin
#FreeClimb API

#FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.

The version of the OpenAPI document: 1.0.0
Contact: support@freeclimb.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.4.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Freeclimb::UpdateConferenceRequestStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::UpdateConferenceRequestStatus do
  let(:instance) { Freeclimb::UpdateConferenceRequestStatus.new }

  describe 'test an instance of UpdateConferenceRequestStatus' do
    it 'should create an instance of UpdateConferenceRequestStatus' do
      expect(instance).to be_instance_of(Freeclimb::UpdateConferenceRequestStatus)
    end
  end
  describe 'test attribute "EMPTY"' do
    it 'should work' do
      expect { Freeclimb::UpdateConferenceRequestStatus::EMPTY = "empty" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::UpdateConferenceRequestStatus::EMPTY
      calculatedValue = Freeclimb::UpdateConferenceRequestStatus::build_from_hash("empty")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "empty"
      calculatedValue = Freeclimb::UpdateConferenceRequestStatus::EMPTY
      expect(expectedValue).to eq(calculatedValue)
    end
  end
  describe 'test attribute "TERMINATED"' do
    it 'should work' do
      expect { Freeclimb::UpdateConferenceRequestStatus::TERMINATED = "terminated" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::UpdateConferenceRequestStatus::TERMINATED
      calculatedValue = Freeclimb::UpdateConferenceRequestStatus::build_from_hash("terminated")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "terminated"
      calculatedValue = Freeclimb::UpdateConferenceRequestStatus::TERMINATED
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
