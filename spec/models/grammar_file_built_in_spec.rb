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

# Unit tests for Freeclimb::GrammarFileBuiltIn
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::GrammarFileBuiltIn do
  let(:instance) { Freeclimb::GrammarFileBuiltIn.new }

  describe 'test an instance of GrammarFileBuiltIn' do
    it 'should create an instance of GrammarFileBuiltIn' do
      expect(instance).to be_instance_of(Freeclimb::GrammarFileBuiltIn)
    end
  end
  
  describe 'test attribute "ALPHNUM6"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::ALPHNUM6 = "ALPHNUM6" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::ALPHNUM6
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("ALPHNUM6")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "ALPHNUM6"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::ALPHNUM6
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "ANY_DIG"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::ANY_DIG = "ANY_DIG" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::ANY_DIG
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("ANY_DIG")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "ANY_DIG"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::ANY_DIG
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG1"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG1 = "DIG1" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG1
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG1")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG1"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG1
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG2"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG2 = "DIG2" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG2
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG2")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG2"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG2
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG3"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG3 = "DIG3" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG3
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG3")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG3"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG3
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG4"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG4 = "DIG4" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG4
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG4")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG4"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG4
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG5"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG5 = "DIG5" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG5
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG5")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG5"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG5
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG6"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG6 = "DIG6" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG6
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG6")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG6"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG6
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG7"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG7 = "DIG7" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG7
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG7")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG7"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG7
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG8"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG8 = "DIG8" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG8
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG8")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG8"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG8
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG9"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG9 = "DIG9" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG9
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG9")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG9"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG9
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG10"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG10 = "DIG10" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG10
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG10")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG10"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG10
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DIG11"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::DIG11 = "DIG11" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::DIG11
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("DIG11")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "DIG11"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::DIG11
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "UP_TO_20_DIGIT_SEQUENCE"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::UP_TO_20_DIGIT_SEQUENCE = "UP_TO_20_DIGIT_SEQUENCE" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::UP_TO_20_DIGIT_SEQUENCE
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("UP_TO_20_DIGIT_SEQUENCE")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "UP_TO_20_DIGIT_SEQUENCE"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::UP_TO_20_DIGIT_SEQUENCE
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "VERSAY_YESNO"' do
    it 'should work' do
      expect { Freeclimb::GrammarFileBuiltIn::VERSAY_YESNO = "VERSAY_YESNO" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::GrammarFileBuiltIn::VERSAY_YESNO
      calculatedValue = Freeclimb::GrammarFileBuiltIn::build_from_hash("VERSAY_YESNO")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "VERSAY_YESNO"
      calculatedValue = Freeclimb::GrammarFileBuiltIn::VERSAY_YESNO
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
