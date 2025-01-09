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

# Unit tests for Freeclimb::BargeInReason
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::BargeInReason do
  let(:instance) { Freeclimb::BargeInReason.new }

  describe 'test an instance of BargeInReason' do
    it 'should create an instance of BargeInReason' do
      expect(instance).to be_instance_of(Freeclimb::BargeInReason)
    end
  end
  
  describe 'test attribute "NO_BARGE_IN"' do
    it 'should work' do
      expect { Freeclimb::BargeInReason::NO_BARGE_IN = "noBargeIn" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::BargeInReason::NO_BARGE_IN
      calculatedValue = Freeclimb::BargeInReason::build_from_hash("noBargeIn")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "noBargeIn"
      calculatedValue = Freeclimb::BargeInReason::NO_BARGE_IN
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "BARGE_IN_BY_DTMF"' do
    it 'should work' do
      expect { Freeclimb::BargeInReason::BARGE_IN_BY_DTMF = "bargeInByDTMF" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::BargeInReason::BARGE_IN_BY_DTMF
      calculatedValue = Freeclimb::BargeInReason::build_from_hash("bargeInByDTMF")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "bargeInByDTMF"
      calculatedValue = Freeclimb::BargeInReason::BARGE_IN_BY_DTMF
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "BARGE_IN_BY_ENERGY"' do
    it 'should work' do
      expect { Freeclimb::BargeInReason::BARGE_IN_BY_ENERGY = "bargeInByEnergy" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::BargeInReason::BARGE_IN_BY_ENERGY
      calculatedValue = Freeclimb::BargeInReason::build_from_hash("bargeInByEnergy")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "bargeInByEnergy"
      calculatedValue = Freeclimb::BargeInReason::BARGE_IN_BY_ENERGY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end