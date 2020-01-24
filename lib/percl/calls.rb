module Percl
  class OutDial < JSONable
    def initialize(actionUrl, callConnectUrl, callingNumber, destination)
      @actionUrl = actionUrl
      @callConnectUrl = callConnectUrl
      @callingNumber = callingNumber
      @destination = destination
    end

    def set_if_machine(ifMachine)
      @ifMachine = ifMachine
    end

    def set_if_machine_url(ifUrl)
      @ifMachineUrl = ifUrl
    end

    def set_send_digits(digits)
      @sendDigits = digits
    end

    def set_status_callback_url(scu)
      @statusCallbackUrl = scu
    end

    def set_timeout(timeout)
      @timeout = timeout
    end
  end

  class Hangup < JSONable
    def set_call_id(callId)
      @callId = callId
    end

    def set_reason(reason)
      @reason = reason
    end
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
    def initialize(digits)
      @digits = digits
    end

    def set_pause_ms(pause)
      @pauseMs = pause
    end
  end

  class Reject < JSONable
    def set_reason(reason)
      @reason = reason
    end
  end
end