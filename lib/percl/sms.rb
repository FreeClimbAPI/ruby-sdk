module Percl
  class Sms < JSONable
    attr_accessor :notificationUrl
    
    def initialize(to, from, text)
      @to = to
      @from = from
      @text = text
    end
  end
end