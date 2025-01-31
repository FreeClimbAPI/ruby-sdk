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

# Unit tests for Freeclimb::MutableResourceModel
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MutableResourceModel do
  let(:instance) { Freeclimb::MutableResourceModel.new }

  describe 'test an instance of MutableResourceModel' do
    it 'should create an instance of MutableResourceModel' do
      expect(instance).to be_instance_of(Freeclimb::MutableResourceModel)
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
    
    
      instance.revision = 1
      expect(instance.revision).to eq(1)
    
    
    
    end
  end

  describe 'test method "initialize"' do
    it 'properly initializes with values' do
      expect { instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )}.not_to raise_error()
    end
    it 'fails to initialize with input argument that is not a hash in Freeclimb::MutableResourceModel' do
      expect { instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
    it 'fails to initialize with invalid attribute' do
      expect { instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
        invalid_attribute: true
      )}.to raise_error(ArgumentError)
    end
  end
  
  describe 'test method "valid"' do
    it 'checks if properties are valid' do
      instance = Freeclimb::MutableResourceModel.new(
          
          uri: "TS",
          
          
          
          
          date_created: "TS",
          
          
          
          
          date_updated: "TS",
          
          
          
          revision: 1,
          
          
          
      )
      expect(instance.valid?).to eq(true)
    end


    skip 'checks if properties are invalid' do
      instance = Freeclimb::MutableResourceModel.new(
        
      )
      expect(instance.valid?).to eq(false)
    end
    
  end

  describe 'test method "eql?"' do
    it 'checks if objects are equal' do
      
      
      
      
      instance_1 = Freeclimb::MutableResourceModel.new(
          
          uri: "TS",
          
          
          
          
          date_created: "TS",
          
          
          
          
          date_updated: "TS",
          
          
          
          revision: 1,
          
          
          
      )
      instance_2 = Freeclimb::MutableResourceModel.new(
          
          uri: "TS",
          
          
          
          
          date_created: "TS",
          
          
          
          
          date_updated: "TS",
          
          
          
          
          
          revision: 1,
          
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end
    
    it 'checks if objects are not equal' do
      instance_1 = Freeclimb::MutableResourceModel.new(
          
          uri: "TS",
          
          
          
          
          date_created: "TS",
          
          
          
          
          date_updated: "TS",
          
          
          
          revision: 2,
          
          
          
      )
      instance_2 = Freeclimb::MutableResourceModel.new(
          
          uri: "ST",
          
          
          
          
          date_created: "ST",
          
          
          
          
          date_updated: "ST",
          
          
          
          revision: 1,
          
          
          
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end
  
  describe 'test method "hash"' do
    it 'calculates hash code' do
      instance = Freeclimb::MutableResourceModel.new(
      
      uri: "TS",
      
      
      
      
      date_created: "TS",
      
      
      
      
      date_updated: "TS",
      
      
      
      revision: 1,
      
      
      
    )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it 'builds equivalent model from hash code' do
      instance_1 = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )
      instance_2 = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
    )
    it 'deserializes the data of uri' do
      expect(instance._deserialize("String", instance.uri)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of date_created' do
      expect(instance._deserialize("String", instance.date_created)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of date_updated' do
      expect(instance._deserialize("String", instance.date_updated)).to be_a_kind_of(String)
    end
    
    
    it 'deserializes the data of revision' do
      expect(instance._deserialize("Integer", instance.revision)).to be_a_kind_of(Integer)
    end
    
    
  end

  describe 'test method "to_s"' do
    it 'returns the string representation of the object' do
      instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it 'returns the object in the form of hash' do
      instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it 'creates equal hash for two equal objects' do
      
      
      
      
      instance_1 = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )
      instance_2 = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
        
        
        
        date_created: "TS",
        
        
        
        
        date_updated: "TS",
        
        
        
        revision: 1,
        
        
        
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::MutableResourceModel.new(
        
        uri: "TS",
        
      
        
        date_created: "TS",
        
      
        
        date_updated: "TS",
        
      
        revision: 1,
        
      )
    it 'returns uri in the form of hash' do
      expect(instance._to_hash(instance.uri)).to eq(instance.uri)
    end
    it 'returns date_created in the form of hash' do
      expect(instance._to_hash(instance.date_created)).to eq(instance.date_created)
    end
    it 'returns date_updated in the form of hash' do
      expect(instance._to_hash(instance.date_updated)).to eq(instance.date_updated)
    end
    it 'returns revision in the form of hash' do
      expect(instance._to_hash(instance.revision)).to eq(instance.revision)
    end
  end

end
