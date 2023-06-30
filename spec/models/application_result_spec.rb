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

# Unit tests for Freeclimb::ApplicationResult
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ApplicationResult do
  let(:instance) { Freeclimb::ApplicationResult.new }

  describe 'test an instance of ApplicationResult' do
    it 'should create an instance of ApplicationResult' do
      expect(instance).to be_instance_of(Freeclimb::ApplicationResult)
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
  



  


  describe 'test attribute "application_id"' do
    it 'should work' do
        
          instance.application_id = "TEST_STRING"
          expect(instance.application_id).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "_alias"' do
    it 'should work' do
        
          instance._alias = "TEST_STRING"
          expect(instance._alias).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "voice_url"' do
    it 'should work' do
        
          instance.voice_url = "TEST_STRING"
          expect(instance.voice_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "voice_fallback_url"' do
    it 'should work' do
        
          instance.voice_fallback_url = "TEST_STRING"
          expect(instance.voice_fallback_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "call_connect_url"' do
    it 'should work' do
        
          instance.call_connect_url = "TEST_STRING"
          expect(instance.call_connect_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "status_callback_url"' do
    it 'should work' do
        
          instance.status_callback_url = "TEST_STRING"
          expect(instance.status_callback_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "sms_url"' do
    it 'should work' do
        
          instance.sms_url = "TEST_STRING"
          expect(instance.sms_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  


  describe 'test attribute "sms_fallback_url"' do
    it 'should work' do
        
          instance.sms_fallback_url = "TEST_STRING"
          expect(instance.sms_fallback_url).to eq("TEST_STRING")  
        
        
        

    end
  end
  



  

end
