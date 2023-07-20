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

# Unit tests for Freeclimb::MessageStatus
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MessageStatus do
  let(:instance) { Freeclimb::MessageStatus.new }

  describe 'test an instance of MessageStatus' do
    it 'should create an instance of MessageStatus' do
      expect(instance).to be_instance_of(Freeclimb::MessageStatus)
    end
  end
  describe 'test attribute "NEW"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::NEW = "new" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::NEW
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("new")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "new"
      calculatedValue = Freeclimb::MessageStatus::NEW
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "QUEUED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::QUEUED = "queued" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::QUEUED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("queued")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "queued"
      calculatedValue = Freeclimb::MessageStatus::QUEUED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "REJECTED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::REJECTED = "rejected" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::REJECTED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("rejected")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "rejected"
      calculatedValue = Freeclimb::MessageStatus::REJECTED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "SENDING"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::SENDING = "sending" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::SENDING
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("sending")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "sending"
      calculatedValue = Freeclimb::MessageStatus::SENDING
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "SENT"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::SENT = "sent" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::SENT
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("sent")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "sent"
      calculatedValue = Freeclimb::MessageStatus::SENT
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "FAILED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::FAILED = "failed" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::FAILED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("failed")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "failed"
      calculatedValue = Freeclimb::MessageStatus::FAILED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "RECEIVED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::RECEIVED = "received" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::RECEIVED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("received")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "received"
      calculatedValue = Freeclimb::MessageStatus::RECEIVED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "UNDELIVERED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::UNDELIVERED = "undelivered" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::UNDELIVERED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("undelivered")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "undelivered"
      calculatedValue = Freeclimb::MessageStatus::UNDELIVERED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "EXPIRED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::EXPIRED = "expired" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::EXPIRED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("expired")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "expired"
      calculatedValue = Freeclimb::MessageStatus::EXPIRED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "DELETED"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::DELETED = "deleted" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::DELETED
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("deleted")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "deleted"
      calculatedValue = Freeclimb::MessageStatus::DELETED
      expect(expectedValue).to eq(calculatedValue)
    end
  end

  describe 'test attribute "UNKNOWN"' do
    it 'should work' do
      expect { Freeclimb::MessageStatus::UNKNOWN = "unknown" }.not_to raise_error
    end
    it 'should serialize to enum' do
      expectedValue = Freeclimb::MessageStatus::UNKNOWN
      calculatedValue = Freeclimb::MessageStatus::build_from_hash("unknown")
      expect(expectedValue).to eq(calculatedValue)
    end
    it 'should deserialize to string' do
      expectedValue = "unknown"
      calculatedValue = Freeclimb::MessageStatus::UNKNOWN
      expect(expectedValue).to eq(calculatedValue)
    end
  end

end
