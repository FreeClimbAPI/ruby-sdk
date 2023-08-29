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

# Unit tests for Freeclimb::MachineType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MachineType do
  let(:instance) { Freeclimb::MachineType.new }

  describe 'test an instance of MachineType' do
    it 'should create an instance of MachineType' do
      expect(instance).to be_instance_of(Freeclimb::MachineType)
    end
  end
  
  describe 'test attribute "ANSWERING_MACHINE"' do
    it 'should work' do
      expect { Freeclimb::MachineType::ANSWERING_MACHINE = "answeringMachine" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MachineType::ANSWERING_MACHINE
      calculatedValue = Freeclimb::MachineType::build_from_hash("answeringMachine")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "answeringMachine"
      calculatedValue = Freeclimb::MachineType::ANSWERING_MACHINE
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "FAX_MACHINE"' do
    it 'should work' do
      expect { Freeclimb::MachineType::FAX_MACHINE = "faxMachine" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MachineType::FAX_MACHINE
      calculatedValue = Freeclimb::MachineType::build_from_hash("faxMachine")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "faxMachine"
      calculatedValue = Freeclimb::MachineType::FAX_MACHINE
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
