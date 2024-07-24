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

# Unit tests for Freeclimb::RecordingList
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::RecordingList do
  let(:instance) { Freeclimb::RecordingList.new }

  describe 'test an instance of RecordingList' do
    it 'should create an instance of RecordingList' do
      expect(instance).to be_instance_of(Freeclimb::RecordingList)
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

  describe 'test attribute "recordings"' do
    it 'should work' do
      instance.recordings = ["ELEMENT_1", "ELEMENT_2"]
      expect(instance.recordings).to eq(["ELEMENT_1", "ELEMENT_2"]) 
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::RecordingList.new(
total: 1,
          
start: 1,
          
_end: 1,
          
page: 1,
          
num_pages: 1,
          
page_size: 1,
          
          next_page_uri: "TS",
          
          recordings: Freeclimb::RecordingResult.new(),
          
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::RecordingList' do
        expect{instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
          next_page_uri: "TS",
          recordings: Freeclimb::RecordingResult.new(),
          recordings: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
          next_page_uri: "TS",
          recordings: Freeclimb::RecordingResult.new(),
          recordings: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
          next_page_uri: "TS",
          recordings: Freeclimb::RecordingResult.new(),
          recordings: Array.new(),
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
      next_page_uri: "TS",
      recordings: Freeclimb::RecordingResult.new(),
      recordings: Array.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
      )
      instance_2 = Freeclimb::RecordingList.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
    )
    it 'deserializes the data of total' do
      expect(instance._deserialize("Integer", instance.total)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of start' do
      expect(instance._deserialize("Integer", instance.start)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of _end' do
      expect(instance._deserialize("Integer", instance._end)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of page' do
      expect(instance._deserialize("Integer", instance.page)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of num_pages' do
      expect(instance._deserialize("Integer", instance.num_pages)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of page_size' do
      expect(instance._deserialize("Integer", instance.page_size)).to be_a_kind_of(Integer)
    end
    it 'deserializes the data of next_page_uri' do
      expect(instance._deserialize("String", instance.next_page_uri)).to be_a_kind_of(String)
    end
    it 'deserializes the data of recordings' do
      expect(instance._deserialize("Array<RecordingResult>", instance.recordings)).to be_a_kind_of(Array)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
      )
      instance_2 = Freeclimb::RecordingList.new(
total: 1,
start: 1,
_end: 1,
page: 1,
num_pages: 1,
page_size: 1,
        next_page_uri: "TS",
        recordings: Freeclimb::RecordingResult.new(),
        recordings: Array.new(),
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::RecordingList.new(
total: 1,
      
start: 1,
      
_end: 1,
      
page: 1,
      
num_pages: 1,
      
page_size: 1,
      
        next_page_uri: "TS",
      
        recordings: Array.new(),
      )
    it 'returns total in the form of hash' do
      expect(instance._to_hash(instance.total)).to eq(instance.total)
    end
    it 'returns start in the form of hash' do
      expect(instance._to_hash(instance.start)).to eq(instance.start)
    end
    it 'returns _end in the form of hash' do
      expect(instance._to_hash(instance._end)).to eq(instance._end)
    end
    it 'returns page in the form of hash' do
      expect(instance._to_hash(instance.page)).to eq(instance.page)
    end
    it 'returns num_pages in the form of hash' do
      expect(instance._to_hash(instance.num_pages)).to eq(instance.num_pages)
    end
    it 'returns page_size in the form of hash' do
      expect(instance._to_hash(instance.page_size)).to eq(instance.page_size)
    end
    it 'returns next_page_uri in the form of hash' do
      expect(instance._to_hash(instance.next_page_uri)).to eq(instance.next_page_uri)
    end
    it 'returns recordings in the form of hash' do
      expect(instance._to_hash(instance.recordings)).to eq(instance.recordings)
    end
  end

end
