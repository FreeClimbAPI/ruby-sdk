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

# Unit tests for Freeclimb::RecordUtterance
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordUtterance do
  let(:instance) { Freeclimb::RecordUtterance.new }

  describe 'test an instance of RecordUtterance' do
    it 'should create an instance of RecordUtterance' do
      expect(instance).to be_instance_of(Freeclimb::RecordUtterance)
    end
  end

  describe 'test attribute "action_url"' do
    it 'should work' do
      
          instance.action_url = "TEST_STRING"
          expect(instance.action_url).to eq("TEST_STRING")  
        
        
      
    end
  end
  
  

  describe 'test attribute "silence_timeout_ms"' do
    it 'should work' do
      
          instance.silence_timeout_ms = 1
          expect(instance.silence_timeout_ms).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "finish_on_key"' do
    it 'should work' do
      
          instance.finish_on_key = "TEST_STRING"
          expect(instance.finish_on_key).to eq("TEST_STRING")  
        
        
      
    end
  end
  
  

  describe 'test attribute "max_length_sec"' do
    it 'should work' do
      
          instance.max_length_sec = 1
          expect(instance.max_length_sec).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "play_beep"' do
    it 'should work' do
      
          instance.play_beep = false
          expect(instance.play_beep).to eq(false)        
        
        
      
    end
  end
  
  

  describe 'test attribute "auto_start"' do
    it 'should work' do
      
          instance.auto_start = false
          expect(instance.auto_start).to eq(false)        
        
        
      
    end
  end
  
  

  describe 'test attribute "privacy_mode"' do
    it 'should work' do
      
          instance.privacy_mode = false
          expect(instance.privacy_mode).to eq(false)        
        
        
      
    end
  end
  
  
end
