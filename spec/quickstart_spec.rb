require 'json'

describe "quickstart" do
    it "generates percl to say the text 'Hello, World!'" do
        say = Freeclimb::Say.new(text:'Hello, World!')
        script = Freeclimb::PerclScript.new(commands:[say])
        json = Freeclimb::percl_to_json(script)
        expect(json).to eq("[{\"Say\":{\"text\":\"Hello, World!\"}}]")
    end
end