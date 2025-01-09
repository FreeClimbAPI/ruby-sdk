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

# Unit tests for Freeclimb::PlayBeep
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::PlayBeep do
  let(:instance) { Freeclimb::PlayBeep.new }

  describe 'test an instance of PlayBeep' do
    it 'should create an instance of PlayBeep' do
      expect(instance).to be_instance_of(Freeclimb::PlayBeep)
    end
  end
  
  describe 'test attribute "ALWAYS"' do
    it 'should work' do
      expect { Freeclimb::PlayBeep::ALWAYS = "always" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::PlayBeep::ALWAYS
      calculatedValue = Freeclimb::PlayBeep::build_from_hash("always")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "always"
      calculatedValue = Freeclimb::PlayBeep::ALWAYS
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "NEVER"' do
    it 'should work' do
      expect { Freeclimb::PlayBeep::NEVER = "never" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::PlayBeep::NEVER
      calculatedValue = Freeclimb::PlayBeep::build_from_hash("never")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "never"
      calculatedValue = Freeclimb::PlayBeep::NEVER
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "ENTRY_ONLY"' do
    it 'should work' do
      expect { Freeclimb::PlayBeep::ENTRY_ONLY = "entryOnly" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::PlayBeep::ENTRY_ONLY
      calculatedValue = Freeclimb::PlayBeep::build_from_hash("entryOnly")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "entryOnly"
      calculatedValue = Freeclimb::PlayBeep::ENTRY_ONLY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "EXIT_ONLY"' do
    it 'should work' do
      expect { Freeclimb::PlayBeep::EXIT_ONLY = "exitOnly" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::PlayBeep::EXIT_ONLY
      calculatedValue = Freeclimb::PlayBeep::build_from_hash("exitOnly")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "exitOnly"
      calculatedValue = Freeclimb::PlayBeep::EXIT_ONLY
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
