module Percl
  class AddToConference < JSONable
    def initialize(confId, callId)
      @conferenceID = confId
      @callId = callId
    end

    def set_start_conf_on_enter(bool)
      @startConfOnEnter = bool
    end

    def set_talk(talk)
      @talk = talk
    end

    def set_listen(listen)
      @listen = listen
    end

    def set_allow_call_control(allow)
      @allowCallControl = allow
    end

    def set_call_control_sequence(sequence)
      @callControlSequence = sequence
    end

    def set_call_control_url(url)
      @callControlUrl = url
    end

    def set_leave_conference_url(url)
      @leaveConferenceUrl = url
    end

    def set_notification_url(url)
      @notificationUrl = url
    end
  end

  class RemoveFromConference < JSONable
    def initialize(callId)
      @callId = callId
    end
  end

  class SetListen < JSONable
    def initialize(callId)
      @callId = callId
    end

    def set_listen(listen)
      @listen = listen
    end
  end

  class SetTalk < JSONable
    def initialize(callId)
      @callId = callId
    end

    def set_talk(talk)
      @talk = talk
    end
  end
end