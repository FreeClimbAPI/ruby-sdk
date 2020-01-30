module Percl
  class CreateConference < JSONable

    attr_accessor :alias
    attr_accessor :playBeep
    attr_accessor :record
    attr_accessor :waitUrl
    attr_accessor :statusCallbackUrl

    def initialize(actionUrl)
      @actionUrl = actionUrl
    end

  end

  class TerminateConference < JSONable
    def initialize(confId)
      @conferenceId = confId
    end
  end
end
