module Percl
  class Enqueue < JSONable
    def initialize(queueId, waitUrl, notificationUrl)
      @queueId = queueId
      @waitUrl = waitUrl
      @notificationUrl = notificationUrl
    end

    def set_notification_url(url)
      @notificationUrl = url
    end
  end

  class Dequeue < JSONable
  end
end
