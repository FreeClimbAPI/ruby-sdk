require 'spec_helper'

describe 'Recordings' do
  describe 'RecordUtterance' do
    describe 'initialize' do
      before do 
        @instance = Percl::RecordUtterance.new('MOCK_ACTION_URL')
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
        expect(actionUrl).to eq('MOCK_ACTION_URL')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::RecordUtterance.new('MOCK_ACTION_URL')
      end
      it 'should have silenceTimeoutMs' do
        expect(@instance).to respond_to(:silenceTimeoutMs)
      end
      it 'should have finishOnKey' do
        expect(@instance).to respond_to(:finishOnKey)
      end
      it 'should have maxLengthSec' do
        expect(@instance).to respond_to(:maxLengthSec)
      end
      it 'should have autoStart' do
        expect(@instance).to respond_to(:autoStart)
      end
    end
  end
end