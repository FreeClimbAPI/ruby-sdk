require 'spec_helper'

describe 'SMS' do
  describe 'initialize' do
    before do
      @instance = Percl::Sms.new('MOCK_TO', 'MOCK_FROM', 'MOCK_TEXT')
    end
    it 'should set to' do
      to = @instance.instance_variable_get :@to
      expect(to).to eq('MOCK_TO')
    end
    it 'should set from' do
      from = @instance.instance_variable_get :@from
      expect(from).to eq('MOCK_FROM')
    end
    it 'should set text' do
      text = @instance.instance_variable_get :@text
      expect(text).to eq('MOCK_TEXT')
    end
  end
  describe 'instance variables' do
    before do
      @instance = Percl::Sms.new('MOCK_TO', 'MOCK_FROM', 'MOCK_TEXT')
    end
    it 'should have notificationUrl' do
      expect(@instance).to respond_to(:notificationUrl)
    end
  end
end