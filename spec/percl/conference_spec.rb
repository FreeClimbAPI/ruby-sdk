require 'spec_helper'

describe 'Conferences' do
  describe 'CreateConference' do
    describe 'initialize' do 
      before do
        @instance = Percl::CreateConference.new('MOCK_ACTION_URL')
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
        expect(actionUrl).to eq('MOCK_ACTION_URL')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::CreateConference.new('MOCK_ACTION_URL')
      end
      it 'should have alias' do
        expect(@instance).to respond_to(:alias)
      end
      it 'should have playBeep' do
        expect(@instance).to respond_to(:playBeep)
      end
      it 'should have record' do
        expect(@instance).to respond_to(:record)
      end
      it 'should have waitUrl' do
        expect(@instance).to respond_to(:waitUrl)
      end
      it 'should have statusCallbackUrl' do
        expect(@instance).to respond_to(:statusCallbackUrl)
      end
    end
  end
  describe 'TerminateConference' do
    describe 'initialize' do
      before do
        @instance = Percl::TerminateConference.new('MOCK_CONF_ID')
      end
      it 'should set conferenceId' do
        confId = @instance.instance_variable_get :@conferenceId
        expect(confId).to eq('MOCK_CONF_ID')
      end
    end
  end
end