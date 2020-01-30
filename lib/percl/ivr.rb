module Percl
  class PlayEarlyMedia < JSONable
    def initialize(file)
      @file = file
    end
  end

  class Say < JSONable
    attr_accessor :language
    attr_accessor :loop
    attr_accessor :conferenceId
    attr_accessor :enforcePCI

    def initialize(response)
      @text = response
    end

  end

  class Play < JSONable
    attr_accessor :loop
    attr_accessor :conferenceId

    def initialize(file)
      @file = file
    end
  end

  class GetDigits < JSONable
    attr_accessor :initialTimeoutMs
    attr_accessor :digitTimeoutMs
    attr_accessor :finishOnKey
    attr_accessor :minDigits
    attr_accessor :maxDigits
    attr_accessor :flushBuffer
    attr_accessor :prompts
    attr_accessor :enforcePCI

    def initialize(actionUrl)
      @actionUrl = actionUrl
    end

  end

  class GetSpeech < JSONable
    attr_accessor :grammarType
    attr_accessor :grammarRule
    attr_accessor :playBeep
    attr_accessor :prompts
    attr_accessor :noInputTimeoutMs
    attr_accessor :confidenceThreshold
    attr_accessor :sensitivityLevel
    attr_accessor :enforcePCI

    def initialize(actionUrl, grammarFile)
      @actionUrl = actionUrl
      @grammarFile = grammarFile
    end
end
