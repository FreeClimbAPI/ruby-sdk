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

# Unit tests for Freeclimb::SMSTenDLCBrandEntityType
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::SMSTenDLCBrandEntityType do
  let(:instance) { Freeclimb::SMSTenDLCBrandEntityType.new }

  describe 'test an instance of SMSTenDLCBrandEntityType' do
    it 'should create an instance of SMSTenDLCBrandEntityType' do
      expect(instance).to be_instance_of(Freeclimb::SMSTenDLCBrandEntityType)
    end
  end
  
  describe 'test attribute "PRIVATE_PROFIT"' do
    it 'should work' do
      expect { Freeclimb::SMSTenDLCBrandEntityType::PRIVATE_PROFIT = "PRIVATE_PROFIT" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::SMSTenDLCBrandEntityType::PRIVATE_PROFIT
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::build_from_hash("PRIVATE_PROFIT")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "PRIVATE_PROFIT"
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::PRIVATE_PROFIT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "PUBLIC_PROFIT"' do
    it 'should work' do
      expect { Freeclimb::SMSTenDLCBrandEntityType::PUBLIC_PROFIT = "PUBLIC_PROFIT" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::SMSTenDLCBrandEntityType::PUBLIC_PROFIT
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::build_from_hash("PUBLIC_PROFIT")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "PUBLIC_PROFIT"
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::PUBLIC_PROFIT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "NON_PROFIT"' do
    it 'should work' do
      expect { Freeclimb::SMSTenDLCBrandEntityType::NON_PROFIT = "NON_PROFIT" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::SMSTenDLCBrandEntityType::NON_PROFIT
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::build_from_hash("NON_PROFIT")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "NON_PROFIT"
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::NON_PROFIT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "GOVERNMENT"' do
    it 'should work' do
      expect { Freeclimb::SMSTenDLCBrandEntityType::GOVERNMENT = "GOVERNMENT" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::SMSTenDLCBrandEntityType::GOVERNMENT
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::build_from_hash("GOVERNMENT")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "GOVERNMENT"
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::GOVERNMENT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "SOLE_PROPRIETOR"' do
    it 'should work' do
      expect { Freeclimb::SMSTenDLCBrandEntityType::SOLE_PROPRIETOR = "SOLE_PROPRIETOR" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::SMSTenDLCBrandEntityType::SOLE_PROPRIETOR
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::build_from_hash("SOLE_PROPRIETOR")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "SOLE_PROPRIETOR"
      calculatedValue = Freeclimb::SMSTenDLCBrandEntityType::SOLE_PROPRIETOR
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
