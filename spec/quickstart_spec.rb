require 'json'

describe "quickstart" do
    it "generates percl to say the text 'Hello, World!'" do
        say = Freeclimb::Say.new(text:'Hello, World!')
        getSpeech = Freeclimb::GetSpeech.new(action_url: 'https://example.com/update')
        script = Freeclimb::PerclScript.new(commands:[say, getSpeech])
        json = script.to_json()
        expect(json).to eq("[{\"Say\":{\"text\":\"Hello, World!\",\"loop\":1}},{\"GetSpeech\":{\"actionUrl\":\"https://example.com/update\"}}]")
    end
end