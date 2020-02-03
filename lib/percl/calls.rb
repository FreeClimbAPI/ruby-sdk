module Percl
  class OutDial < JSONable
    attr_accessor :ifMachine
    attr_accessor :ifMachineUrl
    attr_accessor :sendDigits
    attr_accessor :statusCallbackUrl
    attr_accessor :timeout
    def initialize(actionUrl, callConnectUrl, callingNumber, destination)
      @actionUrl = actionUrl
      @callConnectUrl = callConnectUrl
      @callingNumber = callingNumber
      @destination = destination
    end
  end

  class Hangup < JSONable
    attr_accessor :callId
    attr_accessor :reason
  end

  class Pause < JSONable
    def initialize(length)
      @length = length
    end
  end

  class Redirect < JSONable
    def initialize(actionUrl)
      @actionUrl = actionUrl
    end
  end
    
  class SendDigits < JSONable
    attr_accessor :pauseMs
    def initialize(digits)
      @digits = digits
    end
  end

  class Reject < JSONable
    attr_accessor :reason
  end
end