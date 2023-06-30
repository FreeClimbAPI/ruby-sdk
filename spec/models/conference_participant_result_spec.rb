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

# Unit tests for Freeclimb::ConferenceParticipantResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ConferenceParticipantResult do
  let(:instance) { Freeclimb::ConferenceParticipantResult.new }

  describe 'test an instance of ConferenceParticipantResult' do
    it 'should create an instance of ConferenceParticipantResult' do
      expect(instance).to be_instance_of(Freeclimb::ConferenceParticipantResult)
    end
  end

  describe 'test attribute "uri"' do
    it 'should work' do
        
          instance.uri = "TEST_STRING"
          expect(instance.uri).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "date_created"' do
    it 'should work' do
        
          instance.date_created = "TEST_STRING"
          expect(instance.date_created).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "date_updated"' do
    it 'should work' do
        
          instance.date_updated = "TEST_STRING"
          expect(instance.date_updated).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "revision"' do
    it 'should work' do
        
        
        

    end
  end
  



  


  describe 'test attribute "account_id"' do
    it 'should work' do
        
          instance.account_id = "TEST_STRING"
          expect(instance.account_id).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "conference_id"' do
    it 'should work' do
        
          instance.conference_id = "TEST_STRING"
          expect(instance.conference_id).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "call_id"' do
    it 'should work' do
        
          instance.call_id = "TEST_STRING"
          expect(instance.call_id).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "talk"' do
    it 'should work' do
          instance.talk = false
          expect(instance.talk).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "listen"' do
    it 'should work' do
          instance.listen = false
          expect(instance.listen).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "start_conf_on_enter"' do
    it 'should work' do
          instance.start_conf_on_enter = false
          expect(instance.start_conf_on_enter).to eq(false)        
        
        
        

    end
  end
  



  

end
