require 'spec_helper'

describe 'conference participants' do
  describe 'AddToConference' do
    describe 'initialize' do
      before do
        @instance = Percl::AddToConference.new('MOCK_CONF_ID', 'MOCK_CALL_ID')
      end
      it 'should set conferenceId' do
        addToConf = @instance.instance_variable_get :@conferenceId
        expect(addToConf).to eq('MOCK_CONF_ID')
      end
      it 'should set callId' do
        callId = @instance.instance_variable_get :@callId
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::AddToConference.new('MOCK_CONF_ID', 'MOCK_CALL_ID')
      end
      it 'should have startConfOnEnter' do
        expect(@instance).to respond_to(:startConfOnEnter)
      end
      it 'should have talk' do
        expect(@instance).to respond_to(:talk)
      end
      it 'should have listen' do
        expect(@instance).to respond_to(:listen)
      end
      it 'should have allowCallControl' do
        expect(@instance).to respond_to(:allowCallControl)
      end
      it 'should have callControlSequence' do
        expect(@instance).to respond_to(:callControlSequence)
      end
      it 'should have callControlUrl' do
        expect(@instance).to respond_to(:callControlUrl)
      end
      it 'should have leaveConferenceUrl' do
        expect(@instance).to respond_to(:leaveConferenceUrl)
      end
      it 'should have notificationUrl' do
        expect(@instance).to respond_to(:notificationUrl)
      end
    end
  end
  describe 'RemoveFromConference' do
    describe 'initialize' do
      before do
        @instance = Percl::RemoveFromConference.new('MOCK_CALL_ID')
      end
      it 'should set callId' do
        callId = @instance.instance_variable_get :@callId
        expect(callId).to eq('MOCK_CALL_ID')
      end
    end
  end
  describe 'SetListen' do
    describe 'initialize' do
      before do
        @instance = Percl::SetListen.new('MOCK_CALL_ID')
      end
      it 'should set callId' do
        callId = @instance.instance_variable_get :@callId
        expect(callId).to eq('MOCK_CALL_ID')
      end
    end
    describe 'instance variables' do
      before do 
        @instance = Percl::SetListen.new('MOCK_CALL_ID')
      end
      it 'should have listen' do
        expect(@instance).to respond_to(:listen)
      end
    end
  end
  describe 'SetTalk' do
    describe 'initialize' do
      before do
        @instance = Percl::SetTalk.new('MOCK_CALL_ID')
      end
      it 'should set callId' do
        callId = @instance.instance_variable_get :@callId
        expect(callId).to eq('MOCK_CALL_ID')
      end
    end
    describe 'instance variables' do
      before do 
        @instance = Percl::SetTalk.new('MOCK_CALL_ID')
      end
      it 'should have talk' do
        expect(@instance).to respond_to(:talk)
      end
    end
  end
end