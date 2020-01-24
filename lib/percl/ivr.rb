module Percl
  class PlayEarlyMedia < JSONable
    def initialize(file)
      @file = file
    end
  end

  class Say < JSONable
    def initialize(response)
      @text = response
    end

    def set_language(language)
      @langauge = language
    end

    def set_loop(loop)
      @loop = loop
    end

    def set_conference_id(confId)
      @conferenceId = confId
    end

    def set_enforce_PCI(pci)
      @enforcePCI = pci
    end
  end

  class Play < JSONable
    def initialize(file)
      @file = file
    end

    def set_loop(loop)
      @loop = loop
    end

    def set_conference_id(id)
      @conferenceId = id
    end
  end

  class GetDigits < JSONable
    def initialize(actionUrl)
      @actionUrl = actionUrl
    end

    def set_initial_timeout_ms(ms)
      @initialTimoutMs = ms
    end

    def set_digit_timeout_ms(ms)
      @digitTimeoutMs = ms
    end

    def set_finish_on_key(key)
      @finishOnKey = key
    end

    def set_min_digits(min)
      @minDigits = min
    end

    def set_max_digits(max)
      @maxDigits = max
    end

    def set_flush_buffer(flush)
      @flushBuffer = flush
    end

    def set_prompts(prompts)
      @prompts = prompts
    end

    def set_enforce_PCI(enforce)
      @enforcePCI = enforce
    end
  end

  class GetSpeech < JSONable
    def initialize(actionUrl, grammarFile)
      @actionUrl = actionUrl
      @grammarFile = grammarFile
    end

    def set_grammar_type(type)
      @grammarType = type
    end

    def set_grammar_rule(rule)
      @grammarRule = rule
    end

    def set_play_beep(beep)
      @playBeep = beep
    end

    def set_prompts(prompts)
      @prompts = prompts
    end

    def set_no_input_timeout_ms(timeout)
      @noInputTimeoutMs = timeout
    end

    def set_confidence_threshold(threshold)
      @confidenceThreshold = threshold
    end

    def set_sensitivity_level(level)
      @sensitivityLevel = level
    end

    def set_speech_complete_timeout_ms(ms)
      @speechCompleteTimeoutMs = ms
    end

    def set_enforce_PCI(pci)
      @enforcePCI = pci
    end
  end
end
