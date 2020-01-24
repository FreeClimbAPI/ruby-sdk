module Percl
  class CreateConference < JSONable
    def initialize(actionUrl)
      @actionUrl = actionUrl
    end

    def set_alias(aliasName)
      @alias = aliasName
    end

    def set_play_beep(playBeep)
      @playBeep = playBeep
    end

    def set_record(record)
      @record = record
    end

    def set_wait_url(waitUrl)
      @waitUrl = waitUrl
    end

    def set_status_callback_url(scb)
      @statusCallbackUrl = scb
    end
  end

  class TerminateConference < JSONable
    def initialize(confId)
      @conferenceId = confId
    end
  end
end
