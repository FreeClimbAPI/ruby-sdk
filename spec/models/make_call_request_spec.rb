# #FreeClimb API
#
# FreeClimb is a cloud-based application programming interface (API) that puts the power of the Vail platform in your hands. FreeClimb simplifies the process of creating applications that can use a full range of telephony features without requiring specialized or on-site telephony equipment. Using the FreeClimb REST API to write applications is easy! You have the option to use the language of your choice or hit the API directly. Your application can execute a command by issuing a RESTful request to the FreeClimb API. The base URL to send HTTP requests to the FreeClimb REST API is: /apiserver. FreeClimb authenticates and processes your request.
#
# The version of the OpenAPI document: 1.0.0
# Contact: support@freeclimb.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 7.9.0
#

require "spec_helper"
require "json"
require "date"
include Freeclimb

# Unit tests for Freeclimb::MakeCallRequest
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::MakeCallRequest do
  let(:instance) { Freeclimb::MakeCallRequest.new }

  describe "test an instance of MakeCallRequest" do
    it "should create an instance of MakeCallRequest" do
      expect(instance).to be_instance_of(Freeclimb::MakeCallRequest)
    end
  end

  describe 'test attribute "from"' do
    it "should work" do
      instance.from = "TEST_STRING"
      expect(instance.from).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "to"' do
    it "should work" do
      instance.to = "TEST_STRING"
      expect(instance.to).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "application_id"' do
    it "should work" do
      instance.application_id = "TEST_STRING"
      expect(instance.application_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "send_digits"' do
    it "should work" do
      instance.send_digits = "TEST_STRING"
      expect(instance.send_digits).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "if_machine"' do
    it "should work" do
      instance.if_machine = "TEST_STRING"
      expect(instance.if_machine).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "if_machine_url"' do
    it "should work" do
      instance.if_machine_url = "TEST_STRING"
      expect(instance.if_machine_url).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "timeout"' do
    it "should work" do
      instance.timeout = 1
      expect(instance.timeout).to eq(1)
    end
  end

  describe 'test attribute "parent_call_id"' do
    it "should work" do
      instance.parent_call_id = "TEST_STRING"
      expect(instance.parent_call_id).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "privacy_mode"' do
    it "should work" do
      instance.privacy_mode = false
      expect(instance.privacy_mode).to eq(false)
    end
  end

  describe 'test attribute "call_connect_url"' do
    it "should work" do
      instance.call_connect_url = "TEST_STRING"
      expect(instance.call_connect_url).to eq("TEST_STRING")
    end
  end

  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::MakeCallRequest.new(
          from: "TS",

          to: "TS",

          application_id: "TS",

          send_digits: "TS",

          if_machine: "TS",

          if_machine_url: "TS",

          timeout: 1,

          parent_call_id: "TS",

          privacy_mode: true,

          call_connect_url: "TS"
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::MakeCallRequest" do
      expect {
        Freeclimb::MakeCallRequest.new(
          from: "TS",

          to: "TS",

          application_id: "TS",

          send_digits: "TS",

          if_machine: "TS",

          if_machine_url: "TS",

          timeout: 1,

          parent_call_id: "TS",

          privacy_mode: true,

          call_connect_url: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::MakeCallRequest.new(
          from: "TS",

          to: "TS",

          application_id: "TS",

          send_digits: "TS",

          if_machine: "TS",

          if_machine_url: "TS",

          timeout: 1,

          parent_call_id: "TS",

          privacy_mode: true,

          call_connect_url: "TS",

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::MakeCallRequest.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      instance_1 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      instance_2 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 2,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      instance_2 = Freeclimb::MakeCallRequest.new(
        from: "ST",

        to: "ST",

        application_id: "ST",

        send_digits: "ST",

        if_machine: "ST",

        if_machine_url: "ST",

        timeout: 1,

        parent_call_id: "ST",

        privacy_mode: false,

        call_connect_url: "ST"
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      instance_2 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::MakeCallRequest.new(
      from: "TS",

      to: "TS",

      application_id: "TS",

      send_digits: "TS",

      if_machine: "TS",

      if_machine_url: "TS",

      timeout: 1,

      parent_call_id: "TS",

      privacy_mode: true,

      call_connect_url: "TS"
    )
    it "deserializes the data of from" do
      expect(instance._deserialize("String", instance.from)).to be_a_kind_of(String)
    end

    it "deserializes the data of to" do
      expect(instance._deserialize("String", instance.to)).to be_a_kind_of(String)
    end

    it "deserializes the data of application_id" do
      expect(instance._deserialize("String", instance.application_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of send_digits" do
      expect(instance._deserialize("String", instance.send_digits)).to be_a_kind_of(String)
    end

    it "deserializes the data of if_machine" do
      expect(instance._deserialize("String", instance.if_machine)).to be_a_kind_of(String)
    end

    it "deserializes the data of if_machine_url" do
      expect(instance._deserialize("String", instance.if_machine_url)).to be_a_kind_of(String)
    end

    it "deserializes the data of timeout" do
      expect(instance._deserialize("Integer", instance.timeout)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of parent_call_id" do
      expect(instance._deserialize("String", instance.parent_call_id)).to be_a_kind_of(String)
    end

    it "deserializes the data of privacy_mode" do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
    it "deserializes the data of call_connect_url" do
      expect(instance._deserialize("String", instance.call_connect_url)).to be_a_kind_of(String)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      instance_1 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      instance_2 = Freeclimb::MakeCallRequest.new(
        from: "TS",

        to: "TS",

        application_id: "TS",

        send_digits: "TS",

        if_machine: "TS",

        if_machine_url: "TS",

        timeout: 1,

        parent_call_id: "TS",

        privacy_mode: true,

        call_connect_url: "TS"
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::MakeCallRequest.new(
      from: "TS",

      to: "TS",

      application_id: "TS",

      send_digits: "TS",

      if_machine: "TS",

      if_machine_url: "TS",

      timeout: 1,

      parent_call_id: "TS",

      privacy_mode: true,

      call_connect_url: "TS"
    )
    it "returns from in the form of hash" do
      expect(instance._to_hash(instance.from)).to eq(instance.from)
    end
    it "returns to in the form of hash" do
      expect(instance._to_hash(instance.to)).to eq(instance.to)
    end
    it "returns application_id in the form of hash" do
      expect(instance._to_hash(instance.application_id)).to eq(instance.application_id)
    end
    it "returns send_digits in the form of hash" do
      expect(instance._to_hash(instance.send_digits)).to eq(instance.send_digits)
    end
    it "returns if_machine in the form of hash" do
      expect(instance._to_hash(instance.if_machine)).to eq(instance.if_machine)
    end
    it "returns if_machine_url in the form of hash" do
      expect(instance._to_hash(instance.if_machine_url)).to eq(instance.if_machine_url)
    end
    it "returns timeout in the form of hash" do
      expect(instance._to_hash(instance.timeout)).to eq(instance.timeout)
    end
    it "returns parent_call_id in the form of hash" do
      expect(instance._to_hash(instance.parent_call_id)).to eq(instance.parent_call_id)
    end
    it "returns privacy_mode in the form of hash" do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
    it "returns call_connect_url in the form of hash" do
      expect(instance._to_hash(instance.call_connect_url)).to eq(instance.call_connect_url)
    end
  end
end
