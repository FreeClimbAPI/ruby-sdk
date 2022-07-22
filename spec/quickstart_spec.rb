require 'json'

describe "quickstart" do
    it "generates percl to say the text 'Hello, World!'" do
        say = Freeclimb::Say.new(text:'Hello, World!')
        script = Freeclimb::PerclScript.new(commands:[say])
        json = script.to_json()
        expect(json).to eq("[{\"Say\":{\"text\":\"Hello, World!\",\"loop\":1}}]")
    end
end
