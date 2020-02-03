require 'spec_helper'

describe 'percl' do
  describe 'script' do
    describe 'add' do
      it 'should add argument to commands array' do
        script = Percl::Script.new
        script.add('MOCK_PERCL')
        commands = script.instance_variable_get :@commands
        expect(commands).to match_array(['MOCK_PERCL'])
      end
    end
    describe 'initialize' do
      it 'should create an empty commands array' do
        script = Percl::Script.new
        commands = script.instance_variable_get :@commands
        expect(commands).to match_array([])
      end
    end
    describe 'to_json' do
      it 'should return commands as json string' do
        expected = "[{\"Say\":{\"text\":\"MOCK SAY COMMAND\"}}]"
        say = Percl::Say.new('MOCK SAY COMMAND')
        script = Percl::Script.new
        script.add(say)
        json = script.to_json
        expect(json).to eq(expected)
      end
    end
  end
end