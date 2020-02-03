require 'spec_helper'

describe 'calls' do
  describe 'OutDial' do
    describe 'initialize' do
      before do
        @instance = Percl::OutDial.new('MOCK_ACTION_URL', 'MOCK_CALL_CONNECT_URL', 'MOCK_CALLING_NUMBER', 'MOCK_DESTINATION')
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
        expect(actionUrl).to eq('MOCK_ACTION_URL')
      end
      it 'should set callConnectUrl' do
        callConnectUrl = @instance.instance_variable_get :@callConnectUrl
        expect(callConnectUrl).to eq('MOCK_CALL_CONNECT_URL')
      end
      it 'should set callingNumber' do
        callingNumber = @instance.instance_variable_get :@callingNumber
        expect(callingNumber).to eq('MOCK_CALLING_NUMBER')
      end
      it 'should set destinationNumber' do
        destination = @instance.instance_variable_get :@destination
        expect(destination).to eq('MOCK_DESTINATION')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::OutDial.new('MOCK_ACTION_URL', 'MOCK_CALL_CONNECT_URL', 'MOCK_CALLING_NUMBER', 'MOCK_DESTINATION')
      end
      it 'should have ifMachine' do
        expect(@instance).to respond_to(:ifMachine)
      end
      it 'should have ifMachineUrl' do
        expect(@instance).to respond_to(:ifMachineUrl)
      end
      it 'should have sendDigits' do
        expect(@instance).to respond_to(:sendDigits)
      end
      it 'should have statusCallbackUrl' do
        expect(@instance).to respond_to(:statusCallbackUrl)
      end
      it 'should have timeout' do 
        expect(@instance).to respond_to(:timeout)
      end
    end
  end
  describe 'Hangup' do
    describe 'instance variables' do
      before do
        @instance = Percl::Hangup.new
      end
      it 'should have callId' do
        expect(@instance).to respond_to(:callId)
      end
      it 'should have reason' do
        expect(@instance).to respond_to(:reason)
      end
    end
  end
  describe 'Pause' do
    describe 'initialize' do
      before do
        @instance = Percl::Pause.new(10)
      end
      it 'should set length' do
        actual = @instance.instance_variable_get :@length
        expect(actual).to eq(10)
      end
    end
  end
  describe 'Redirect' do
    describe 'initialize' do
      before do
        @instance = Percl::Redirect.new('MOCK_ACTION_URL')
      end
      it 'should set actionUrl' do
        url = @instance.instance_variable_get :@actionUrl
        expect(url).to eq('MOCK_ACTION_URL')
      end
    end
  end
  describe 'SendDigits' do
    describe 'initialize' do
      before do
        @instance = Percl::SendDigits.new('1234')
      end
      it 'should set actionUrl' do
        digits = @instance.instance_variable_get :@digits
        expect(digits).to eq('1234')
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::SendDigits.new('1234')
      end
      it 'should have pauseMs' do
        expect(@instance).to respond_to(:pauseMs)
      end
    end
  end
  describe 'Reject' do
    describe 'instance variables' do
      before do
        @instance = Percl::Reject.new
      end
      it 'should have reason' do
        expect(@instance).to respond_to(:reason)
      end
    end
  end
end
