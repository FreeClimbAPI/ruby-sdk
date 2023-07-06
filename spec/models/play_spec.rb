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

# Unit tests for Freeclimb::Play
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::Play do
  let(:instance) { Freeclimb::Play.new }

  describe 'test an instance of Play' do
    it 'should create an instance of Play' do
      expect(instance).to be_instance_of(Freeclimb::Play)
    end
  end

  describe 'test attribute "file"' do
    it 'should work' do
      
          instance.file = "TEST_STRING"
          expect(instance.file).to eq("TEST_STRING")  
        
        
      
    end
  end
  
  

  describe 'test attribute "loop"' do
    it 'should work' do
      
          instance.loop = 1
          expect(instance.loop).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "conference_id"' do
    it 'should work' do
      
          instance.conference_id = "TEST_STRING"
          expect(instance.conference_id).to eq("TEST_STRING")  
        
        
      
    end
  end
  
  

  describe 'test attribute "privacy_mode"' do
    it 'should work' do
      
          instance.privacy_mode = false
          expect(instance.privacy_mode).to eq(false)        
        
        
      
    end
  end
  
  
end
