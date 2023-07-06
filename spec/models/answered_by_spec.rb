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

# Unit tests for Freeclimb::AnsweredBy
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AnsweredBy do
  let(:instance) { Freeclimb::AnsweredBy.new }

  describe 'test an instance of AnsweredBy' do
    it 'should create an instance of AnsweredBy' do
      expect(instance).to be_instance_of(Freeclimb::AnsweredBy)
    end
  end
  describe 'test attribute "HUMAN"' do
    it 'should work' do
      expect { Freeclimb::AnsweredBy::HUMAN = "human" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::AnsweredBy::HUMAN
      calculatedValue = Freeclimb::AnsweredBy::build_from_hash("human")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "human"
      calculatedValue = Freeclimb::AnsweredBy::HUMAN
      expect(expectedValue).to eq(calculatedValue)
    end
  end
  describe 'test attribute "MACHINE"' do
    it 'should work' do
      expect { Freeclimb::AnsweredBy::MACHINE = "machine" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::AnsweredBy::MACHINE
      calculatedValue = Freeclimb::AnsweredBy::build_from_hash("machine")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "machine"
      calculatedValue = Freeclimb::AnsweredBy::MACHINE
      expect(expectedValue).to eq(calculatedValue)
    end
  end
end
