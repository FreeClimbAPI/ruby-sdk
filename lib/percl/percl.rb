require_relative 'jsonable'
require 'json'
require_relative 'calls'
require_relative 'conferences'
require_relative 'conference_participants'
require_relative 'ivr'
require_relative 'queue_members'
require_relative 'recordings'
require_relative 'sms'

module Percl
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
end