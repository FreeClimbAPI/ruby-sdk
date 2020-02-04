require 'spec_helper'

describe 'ivr' do
  describe 'PlayEarlyMedia' do
    describe 'initialize' do
      before do
        @instance = Percl::PlayEarlyMedia.new('MOCK_FILE')
      end
      it 'should set file' do
        file = @instance.instance_variable_get(:@file)
        expect(file).to eq('MOCK_FILE')
      end
    end
  end
  describe 'Say' do
    describe 'initialize' do
      before do
        @instance = Percl::Say.new('MOCK_RESPONSE')
      end
      it 'should set text' do
        text = @instance.instance_variable_get :@text
        expect(text).to eq('MOCK_RESPONSE')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::Say.new('MOCK_RESPONSE')
      end
      it 'should have language' do
        expect(@instance).to respond_to(:language)
      end
      it 'should have loop' do
        expect(@instance).to respond_to(:loop)
      end
      it 'should have conferenceId' do
        expect(@instance).to respond_to(:conferenceId)
      end
      it 'should have enforcePCI' do
        expect(@instance).to respond_to(:enforcePCI)
      end
    end
  end
  describe 'Play' do
    describe 'initialize' do
      before do
        @instance = Percl::Play.new('MOCK_FILE')
      end
      it 'should have file' do
        file = @instance.instance_variable_get :@file
        expect(file).to eq('MOCK_FILE')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::Play.new('MOCK_FILE')
      end
      it 'should have loop' do
        expect(@instance).to respond_to(:loop)
      end
      it 'should have conferenceId' do
        expect(@instance).to respond_to(:conferenceId)
      end
    end
  end
  describe 'GetDigits' do
    describe 'initialize' do
      before do
        @instance = Percl::GetDigits.new('MOCK_ACTION_URL')
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
        expect(actionUrl).to eq('MOCK_ACTION_URL')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::GetDigits.new('MOCK_ACTION_URL')
      end
      it 'should have initialTimeoutMs' do
        expect(@instance).to respond_to(:initialTimeoutMs)
      end
      it 'should have digitTimeoutMs' do
        expect(@instance).to respond_to(:digitTimeoutMs)
      end
      it 'should have finishOnKey' do
        expect(@instance).to respond_to(:finishOnKey)
      end
      it 'should have minDigits' do
        expect(@instance).to respond_to(:minDigits)
      end
      it 'should have maxDigits' do
        expect(@instance).to respond_to(:maxDigits)
      end
      it 'should have flushBuffer' do
        expect(@instance).to respond_to(:flushBuffer)
      end
      it 'should have prompts' do
        expect(@instance).to respond_to(:prompts)
      end
      it 'should have enforePCI' do
        expect(@instance).to respond_to(:enforcePCI)
      end
    end
  end
  describe 'GetSpeech' do
    describe 'initialize' do
      before do
        @instance = Percl::GetSpeech.new('MOCK_ACTION_URL', 'MOCK_GRAMMAR_FILE')
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
        expect(actionUrl).to eq('MOCK_ACTION_URL')
      end
      it 'should set grammarFile' do
        grammarFile = @instance.instance_variable_get :@grammarFile
        expect(grammarFile).to eq('MOCK_GRAMMAR_FILE')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::GetSpeech.new('MOCK_ACTION_URL', 'MOCK_GRAMAR_FILE')
      end
      it 'should have grammarType' do
        expect(@instance).to respond_to(:grammarType)
      end
      it 'should have grammarRule' do
        expect(@instance).to respond_to(:grammarRule)
      end
      it 'should have playBeep' do
        expect(@instance).to respond_to(:playBeep)
      end
      it 'should have prompts' do
        expect(@instance).to respond_to(:prompts)
      end
      it 'should have noInputTimeoutMs' do
        expect(@instance).to respond_to(:noInputTimeoutMs)
      end
      it 'should have confidenceThreshold' do
        expect(@instance).to respond_to(:confidenceThreshold)
      end
      it 'should have sensitivityLevel' do
        expect(@instance).to respond_to(:sensitivityLevel)
      end
      it 'should have enforePCI' do
        expect(@instance).to respond_to(:enforcePCI)
      end
      it 'should have speechCompleteTimeoutMs' do
        expect(@instance).to respond_to(:speechCompleteTimeoutMs)
      end
      it 'should have speechIncompleteTimeoutMs' do
        expect(@instance).to respond_to(:speechIncompleteTimeoutMs)
      end
    end
  end
end