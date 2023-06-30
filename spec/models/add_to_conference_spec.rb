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

# Unit tests for Freeclimb::AddToConference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AddToConference do
  let(:instance) { Freeclimb::AddToConference.new }

  describe 'test an instance of AddToConference' do
    it 'should create an instance of AddToConference' do
      expect(instance).to be_instance_of(Freeclimb::AddToConference)
    end
  end

  describe 'test attribute "allow_call_control"' do
    it 'should work' do
          instance.allow_call_control = false
          expect(instance.allow_call_control).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "call_control_sequence"' do
    it 'should work' do
        
          instance.call_control_sequence = "TEST_STRING"
          expect(instance.call_control_sequence).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "call_control_url"' do
    it 'should work' do
        
          instance.call_control_url = "TEST_STRING"
          expect(instance.call_control_url).to eq("TEST_STRING")  
        
        
        

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
          instance.call_id = false
          expect(instance.call_id).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "leave_conference_url"' do
    it 'should work' do
        
          instance.leave_conference_url = "TEST_STRING"
          expect(instance.leave_conference_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "listen"' do
    it 'should work' do
          instance.listen = false
          expect(instance.listen).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "notification_url"' do
    it 'should work' do
        
          instance.notification_url = "TEST_STRING"
          expect(instance.notification_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "start_conf_on_enter"' do
    it 'should work' do
          instance.start_conf_on_enter = false
          expect(instance.start_conf_on_enter).to eq(false)        
        
        
        

    end
  end
  



  


  describe 'test attribute "talk"' do
    it 'should work' do
          instance.talk = false
          expect(instance.talk).to eq(false)        
        
        
        

    end
  end
  



  

end
