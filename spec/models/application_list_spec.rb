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

# Unit tests for Freeclimb::ApplicationList
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::ApplicationList do
  let(:instance) { Freeclimb::ApplicationList.new }

  describe 'test an instance of ApplicationList' do
    it 'should create an instance of ApplicationList' do
      expect(instance).to be_instance_of(Freeclimb::ApplicationList)
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

  describe 'test attribute "applications"' do
    it 'should work' do
      instance.applications = ["ELEMENT_1", "ELEMENT_2"]
      expect(instance.applications).to eq(["ELEMENT_1", "ELEMENT_2"]) 
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
        expect{instance = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: Array.new(),
        )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::ApplicationList' do
        expect{instance = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
        expect{instance = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: Array.new(),
          invalid_attribute: true
        )}.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: Array.new(),
      )
      expect(instance.valid?).to eq(true)
    end
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      obj = Object.new()
      instance_1 = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: [],
      )
      instance_2 = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: [],
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::ApplicationList.new(
          total: 1,
          start: 1,
          _end: 1,
          page: 1,
          num_pages: 1,
          page_size: 1,
          next_page_uri: "TS",
          applications: [],
      )
      instance_2 = Freeclimb::ApplicationList.new(
          total: 0,
          start: 0,
          _end: 0,
          page: 0,
          num_pages: 0,
          page_size: 0,
          next_page_uri: "ST",
          applications: nil,
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::ApplicationList.new(
      total: 1,
      start: 1,
      _end: 1,
      page: 1,
      num_pages: 1,
      page_size: 1,
      next_page_uri: "TS",
      applications: Array.new(),
    )
    expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
      )
      instance_2 = Freeclimb::ApplicationList.new
      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
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
    it 'deserializes the data of applications' do
      expect(instance._deserialize("Array<ApplicationResult>", instance.applications)).to be_a_kind_of(Array)
    end
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      obj = Object.new()
      instance_1 = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
      )
      instance_2 = Freeclimb::ApplicationList.new(
        total: 1,
        start: 1,
        _end: 1,
        page: 1,
        num_pages: 1,
        page_size: 1,
        next_page_uri: "TS",
        applications: Array.new(),
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::ApplicationList.new(
        total: 1,
      
        start: 1,
      
        _end: 1,
      
        page: 1,
      
        num_pages: 1,
      
        page_size: 1,
      
        next_page_uri: "TS",
      
        applications: Array.new(),
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
    it 'returns applications in the form of hash' do
      expect(instance._to_hash(instance.applications)).to eq(instance.applications)
    end
  end

end
