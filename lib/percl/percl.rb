require 'json'

module Percl
  class JSONable
    def as_json
        hash = {}
        self.instance_variables.each do |var|
            hash[var.to_s.delete "@"] = self.instance_variable_get var
        end
        {self.class.name.split('::').last => hash}
    end
    def from_json! string
        JSON.load(string).each do |var, val|
            self.instance_variable_set var, val
        end
    end
  end

  class Script
    def initialize
      @commands = []
    end

    def add(command)
      @commands.push(command)
    end

    def to_json
      hash = []
      @commands.each do |command|
        hash.push(command.as_json)
      end
      hash.to_json
    end
  end

  class Say < JSONable
    def initialize(response)
      @text = response
    end

    def set_language(language)
      @langauge = language
    end
  end

end

