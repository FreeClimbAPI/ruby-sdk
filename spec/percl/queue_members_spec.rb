require 'spec_helper'

describe 'Queue Members' do
  describe 'Enqueue' do
    describe 'initialize' do
      before do
        @instance = Percl::Enqueue.new('MOCK_QUEUE_ID', 'MOCK_WAIT_URL', 'MOCK_ACTION_URL')
      end
      it 'should set queueId' do
        queueId = @instance.instance_variable_get :@queueId
        expect(queueId).to eq('MOCK_QUEUE_ID')
      end
      it 'should set waitUrl' do
        waitUrl = @instance.instance_variable_get :@waitUrl
      end
      it 'should set actionUrl' do
        actionUrl = @instance.instance_variable_get :@actionUrl
      end
    end
    describe 'instance variables' do
      before do
        @instance = Percl::Enqueue.new('MOCK_QUEUE_ID', 'MOCK_WAIT_URL', 'MOCK_ACTION_URL')
      end
      it 'should have notificationUrl' do
        expect(@instance).to respond_to(:notificationUrl)
      end
    end
  end
  describe 'Dequeue' do
    it 'should instantiate' do
      instance = Percl::Dequeue.new
      expect(instance).to be_truthy
    end
  end
end