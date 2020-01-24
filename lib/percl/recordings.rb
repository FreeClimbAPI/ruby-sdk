module Percl
  class RecordUtterance < JSONable
    def initialize(actionUrl)
      @actionUrl = actionUrl
    end

    def set_silence_timeout_ms(ms)
      @silenceTimeoutMs = ms
    end

    def set_finish_on_key(key)
      @finishOnKey = key
    end

    def set_max_length_sec(sec)
      @maxLengthSec = sec
    end

    def set_auto_start(start)
      @autoStart = start
    end
  end

  class StartRecordCall < JSONable
  end
end