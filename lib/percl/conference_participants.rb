module Percl
  class AddToConference < JSONable
    attr_accessor :startConfOnEnter
    attr_accessor :talk
    attr_accessor :listen
    attr_accessor :allowCallControl
    attr_accessor :callControlSequence
    attr_accessor :callControlUrl
    attr_accessor :leaveConferenceUrl
    attr_accessor :notificationUrl

    def initialize(confId, callId)
      @conferenceID = confId
      @callId = callId
    end

  end

  class RemoveFromConference < JSONable
    def initialize(callId)
      @callId = callId
    end
  end

  class SetListen < JSONable
    attr_accessor :listen    

    def initialize(callId)
      @callId = callId
    end
  end

  class SetTalk < JSONable
    attr_accessor :talk
    
    def initialize(callId)
      @callId = callId
    end
  end
end