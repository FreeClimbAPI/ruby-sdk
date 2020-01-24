module Percl
  class Sms < JSONable
    def initialize(to, from, text)
      @to = to
      @from = from
      @text = text
    end

    def set_notification_url(url)
      @notificationUrl = url
    end
  end
end