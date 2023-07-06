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

# Unit tests for Freeclimb::AvailableNumberList
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::AvailableNumberList do
  let(:instance) { Freeclimb::AvailableNumberList.new }

  describe 'test an instance of AvailableNumberList' do
    it 'should create an instance of AvailableNumberList' do
      expect(instance).to be_instance_of(Freeclimb::AvailableNumberList)
    end
  end

  describe 'test attribute "total"' do
    it 'should work' do
      
          instance.total = 1
          expect(instance.total).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "start"' do
    it 'should work' do
      
          instance.start = 1
          expect(instance.start).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "_end"' do
    it 'should work' do
      
          instance._end = 1
          expect(instance._end).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "page"' do
    it 'should work' do
      
          instance.page = 1
          expect(instance.page).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "num_pages"' do
    it 'should work' do
      
          instance.num_pages = 1
          expect(instance.num_pages).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "page_size"' do
    it 'should work' do
      
          instance.page_size = 1
          expect(instance.page_size).to eq(1) 
        
        
      
    end
  end
  
  

  describe 'test attribute "next_page_uri"' do
    it 'should work' do
      
          instance.next_page_uri = "TEST_STRING"
          expect(instance.next_page_uri).to eq("TEST_STRING")  
        
        
      
    end
  end
  
  

  describe 'test attribute "available_phone_numbers"' do
    it 'should work' do
      
        
          instance.available_phone_numbers = ["ELEMENT_1", "ELEMENT_2"]
          expect(instance.available_phone_numbers).to eq(["ELEMENT_1", "ELEMENT_2"]) 
        
      
    end
  end
  
  
end
