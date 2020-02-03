require 'spec_helper'

describe 'JSONable' do
  describe 'as_json' do
    describe 'one level object' do
      it 'stringfies the Percl script' do
        script = Percl::Script.new
        say = Percl::Say.new('MOCK_RESPONSE')
        script.add(say)
        json = script.to_json
        expected_json = "[{\"Say\":{\"text\":\"MOCK_RESPONSE\"}}]"
        expect(json).to eq(expected_json)
      end
    end
    describe 'multi-level object' do
      it 'stringfies the Percl script' do
        script = Percl::Script.new
        getDigits = Percl::GetDigits.new('MOCK_ACTION_URL')
        say = Percl::Say.new('MOCK_RESPONSE')
        getDigits.prompts = [say]
        script.add(getDigits)
        json = script.to_json
        expected_json = "[{\"GetDigits\":{\"actionUrl\":\"MOCK_ACTION_URL\",\"prompts\":[{\"Say\":{\"text\":\"MOCK_RESPONSE\"}}]}}]"
        expect(json).to eq(expected_json)
      end
    end
  end
end