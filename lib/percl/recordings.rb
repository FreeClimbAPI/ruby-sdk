module Percl
  class RecordUtterance < JSONable
    attr_accessor :silenceTimeoutMs
    attr_accessor :finishOnKey
    attr_accessor :maxLengthSec
    attr_accessor :autoStart

    def initialize(actionUrl)
      @actionUrl = actionUrl
    end
  end

  class StartRecordCall < JSONable
  end
end