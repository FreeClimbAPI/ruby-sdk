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

# Unit tests for Freeclimb::GetSpeech
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe Freeclimb::GetSpeech do
  let(:instance) { Freeclimb::GetSpeech.new }

  describe "test an instance of GetSpeech" do
    it "should create an instance of GetSpeech" do
      expect(instance).to be_instance_of(Freeclimb::GetSpeech)
    end
  end

  describe 'test attribute "action_url"' do
    it "should work" do
      instance.action_url = "TEST_STRING"
      expect(instance.action_url).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "grammar_type"' do
    it "assigns value URL" do
      instance.grammar_type = Freeclimb::GrammarType::URL
      expect(instance.grammar_type).to eq(Freeclimb::GrammarType::URL)
    end
    it "assigns value BUILT_IN" do
      instance.grammar_type = Freeclimb::GrammarType::BUILT_IN
      expect(instance.grammar_type).to eq(Freeclimb::GrammarType::BUILT_IN)
    end
  end
  describe 'test attribute "grammar_file"' do
    it "should work" do
      instance.grammar_file = "TEST_STRING"
      expect(instance.grammar_file).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "grammar_rule"' do
    it "should work" do
      instance.grammar_rule = "TEST_STRING"
      expect(instance.grammar_rule).to eq("TEST_STRING")
    end
  end

  describe 'test attribute "play_beep"' do
    it "should work" do
      instance.play_beep = false
      expect(instance.play_beep).to eq(false)
    end
  end

  describe 'test attribute "prompts"' do
    it "should work" do
      instance.prompts = ["ELEMENT_1", "ELEMENT_2"]
      expect(instance.prompts).to eq(["ELEMENT_1", "ELEMENT_2"])
    end
  end

  describe 'test attribute "no_input_timeout_ms"' do
    it "should work" do
      instance.no_input_timeout_ms = 1
      expect(instance.no_input_timeout_ms).to eq(1)
    end
  end

  describe 'test attribute "recognition_timeout_ms"' do
    it "should work" do
      instance.recognition_timeout_ms = 1
      expect(instance.recognition_timeout_ms).to eq(1)
    end
  end

  describe 'test attribute "confidence_threshold"' do
    it "should work" do
      instance.confidence_threshold = 1.0
      expect(instance.confidence_threshold).to eq(1.0)
    end
  end

  describe 'test attribute "sensitivity_level"' do
    it "should work" do
      instance.sensitivity_level = 1.0
      expect(instance.sensitivity_level).to eq(1.0)
    end
  end

  describe 'test attribute "speech_complete_timeout_ms"' do
    it "should work" do
      instance.speech_complete_timeout_ms = 1
      expect(instance.speech_complete_timeout_ms).to eq(1)
    end
  end

  describe 'test attribute "speech_incomplete_timeout_ms"' do
    it "should work" do
      instance.speech_incomplete_timeout_ms = 1
      expect(instance.speech_incomplete_timeout_ms).to eq(1)
    end
  end

  describe 'test attribute "privacy_mode"' do
    it "should work" do
      instance.privacy_mode = false
      expect(instance.privacy_mode).to eq(false)
    end
  end

  describe 'test method "initialize"' do
    it "properly initializes with values" do
      expect {
        Freeclimb::GetSpeech.new(
          action_url: "TS",

          grammar_type: Freeclimb::GrammarType::URL,

          grammar_file: "TS",

          grammar_rule: "TS",

          play_beep: true,

          prompts: [],

          no_input_timeout_ms: 1,

          recognition_timeout_ms: 1,

          speech_complete_timeout_ms: 1,

          speech_incomplete_timeout_ms: 1,

          privacy_mode: true
        )
      }.not_to raise_error
    end
    it "fails to initialize with input argument that is not a hash in Freeclimb::GetSpeech" do
      expect {
        Freeclimb::GetSpeech.new(
          action_url: "TS",

          grammar_type: Freeclimb::GrammarType::URL,

          grammar_file: "TS",

          grammar_rule: "TS",

          play_beep: true,

          prompts: [],

          no_input_timeout_ms: 1,

          recognition_timeout_ms: 1,

          speech_complete_timeout_ms: 1,

          speech_incomplete_timeout_ms: 1,

          privacy_mode: true,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
    it "fails to initialize with invalid attribute" do
      expect {
        Freeclimb::GetSpeech.new(
          action_url: "TS",

          grammar_type: Freeclimb::GrammarType::URL,

          grammar_file: "TS",

          grammar_rule: "TS",

          play_beep: true,

          prompts: [],

          no_input_timeout_ms: 1,

          recognition_timeout_ms: 1,

          speech_complete_timeout_ms: 1,

          speech_incomplete_timeout_ms: 1,

          privacy_mode: true,

          invalid_attribute: true
        )
      }.to raise_error(ArgumentError)
    end
  end

  describe 'test method "valid"' do
    it "checks if properties are valid" do
      instance = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        confidence_threshold: 1,

        sensitivity_level: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance.valid?).to eq(true)
    end

    skip "checks if properties are invalid" do
      instance = Freeclimb::GetSpeech.new

      expect(instance.valid?).to eq(false)
    end
  end

  describe 'test method "eql?"' do
    it "checks if objects are equal" do
      instance_1 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      instance_2 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance_1.eql?(instance_2)).to eq(true)
    end

    it "checks if objects are not equal" do
      instance_1 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 2,

        recognition_timeout_ms: 2,

        speech_complete_timeout_ms: 2,

        speech_incomplete_timeout_ms: 2,

        privacy_mode: true
      )
      instance_2 = Freeclimb::GetSpeech.new(
        action_url: "ST",

        grammar_type: nil,

        grammar_file: "ST",

        grammar_rule: "ST",

        play_beep: false,

        prompts: nil,

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: false
      )
      expect(instance_1.eql?(instance_2)).to eq(false)
    end
  end

  describe 'test method "hash"' do
    it "calculates hash code" do
      instance = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance.hash).to be_a_kind_of(Integer)
    end
  end

  describe 'test method "build_from_hash"' do
    it "builds equivalent model from hash code" do
      instance_1 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      instance_2 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )

      expect(instance_2.build_from_hash(instance_1.hash)).to eq(instance_1.build_from_hash(instance_1.hash))
    end
  end

  describe 'test method "_deserialize"' do
    instance = Freeclimb::GetSpeech.new(
      action_url: "TS",

      grammar_type: Freeclimb::GrammarType::URL,

      grammar_file: "TS",

      grammar_rule: "TS",

      play_beep: true,

      prompts: [],

      no_input_timeout_ms: 1,

      recognition_timeout_ms: 1,

      speech_complete_timeout_ms: 1,

      speech_incomplete_timeout_ms: 1,

      privacy_mode: true
    )
    it "deserializes the data of action_url" do
      expect(instance._deserialize("String", instance.action_url)).to be_a_kind_of(String)
    end

    it "deserializes the data of grammar_file" do
      expect(instance._deserialize("String", instance.grammar_file)).to be_a_kind_of(String)
    end

    it "deserializes the data of grammar_rule" do
      expect(instance._deserialize("String", instance.grammar_rule)).to be_a_kind_of(String)
    end

    it "deserializes the data of play_beep" do
      expect(instance._deserialize("Boolean", instance.play_beep)).to be_a_kind_of(TrueClass)
    end
    it "deserializes the data of prompts" do
      expect(instance._deserialize("Array<PerclCommand>", instance.prompts)).to be_a_kind_of(Array)
    end

    it "deserializes the data of no_input_timeout_ms" do
      expect(instance._deserialize("Integer", instance.no_input_timeout_ms)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of recognition_timeout_ms" do
      expect(instance._deserialize("Integer", instance.recognition_timeout_ms)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of confidence_threshold" do
      expect(instance._deserialize("Float", instance.confidence_threshold)).to be_a_kind_of(Float)
    end

    it "deserializes the data of sensitivity_level" do
      expect(instance._deserialize("Float", instance.sensitivity_level)).to be_a_kind_of(Float)
    end

    it "deserializes the data of speech_complete_timeout_ms" do
      expect(instance._deserialize("Integer", instance.speech_complete_timeout_ms)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of speech_incomplete_timeout_ms" do
      expect(instance._deserialize("Integer", instance.speech_incomplete_timeout_ms)).to be_a_kind_of(Integer)
    end

    it "deserializes the data of privacy_mode" do
      expect(instance._deserialize("Boolean", instance.privacy_mode)).to be_a_kind_of(TrueClass)
    end
  end

  describe 'test method "to_s"' do
    it "returns the string representation of the object" do
      instance = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance.to_s).to eq(instance.to_hash.to_s)
    end
  end

  describe 'test method "to_hash"' do
    it "returns the object in the form of hash" do
      instance = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance.to_hash).to be_a_kind_of(Hash)
    end
    it "creates equal hash for two equal objects" do
      instance_1 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      instance_2 = Freeclimb::GetSpeech.new(
        action_url: "TS",

        grammar_type: Freeclimb::GrammarType::URL,

        grammar_file: "TS",

        grammar_rule: "TS",

        play_beep: true,

        prompts: [],

        no_input_timeout_ms: 1,

        recognition_timeout_ms: 1,

        speech_complete_timeout_ms: 1,

        speech_incomplete_timeout_ms: 1,

        privacy_mode: true
      )
      expect(instance_1.to_hash).to eq(instance_2.to_hash)
    end
  end

  describe 'test method "_to_hash"' do
    instance = Freeclimb::GetSpeech.new(
      action_url: "TS",

      grammar_type: Freeclimb::GrammarType::URL,

      grammar_file: "TS",

      grammar_rule: "TS",

      play_beep: true,

      prompts: [],

      no_input_timeout_ms: 1,

      recognition_timeout_ms: 1,

      speech_complete_timeout_ms: 1,

      speech_incomplete_timeout_ms: 1,

      privacy_mode: true
    )
    it "returns action_url in the form of hash" do
      expect(instance._to_hash(instance.action_url)).to eq(instance.action_url)
    end
    it "returns grammar_type in the form of hash" do
      expect(instance._to_hash(instance.grammar_type)).to eq(instance.grammar_type)
    end
    it "returns grammar_file in the form of hash" do
      expect(instance._to_hash(instance.grammar_file)).to eq(instance.grammar_file)
    end
    it "returns grammar_rule in the form of hash" do
      expect(instance._to_hash(instance.grammar_rule)).to eq(instance.grammar_rule)
    end
    it "returns play_beep in the form of hash" do
      expect(instance._to_hash(instance.play_beep)).to eq(instance.play_beep)
    end
    it "returns prompts in the form of hash" do
      expect(instance._to_hash(instance.prompts)).to eq(instance.prompts)
    end
    it "returns no_input_timeout_ms in the form of hash" do
      expect(instance._to_hash(instance.no_input_timeout_ms)).to eq(instance.no_input_timeout_ms)
    end
    it "returns recognition_timeout_ms in the form of hash" do
      expect(instance._to_hash(instance.recognition_timeout_ms)).to eq(instance.recognition_timeout_ms)
    end
    it "returns confidence_threshold in the form of hash" do
      expect(instance._to_hash(instance.confidence_threshold)).to eq(instance.confidence_threshold)
    end
    it "returns sensitivity_level in the form of hash" do
      expect(instance._to_hash(instance.sensitivity_level)).to eq(instance.sensitivity_level)
    end
    it "returns speech_complete_timeout_ms in the form of hash" do
      expect(instance._to_hash(instance.speech_complete_timeout_ms)).to eq(instance.speech_complete_timeout_ms)
    end
    it "returns speech_incomplete_timeout_ms in the form of hash" do
      expect(instance._to_hash(instance.speech_incomplete_timeout_ms)).to eq(instance.speech_incomplete_timeout_ms)
    end
    it "returns privacy_mode in the form of hash" do
      expect(instance._to_hash(instance.privacy_mode)).to eq(instance.privacy_mode)
    end
  end
end
