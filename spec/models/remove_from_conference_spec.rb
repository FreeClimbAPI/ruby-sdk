=begin
#FreeClimb API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 0.0.1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0-SNAPSHOT

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Freeclimb::RemoveFromConference
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'RemoveFromConference' do
  before do
    # run before each test
    @instance = Freeclimb::RemoveFromConference.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of RemoveFromConference' do
    it 'should create an instance of RemoveFromConference' do
      expect(@instance).to be_instance_of(Freeclimb::RemoveFromConference)
    end
  end
  describe 'test attribute "call_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
