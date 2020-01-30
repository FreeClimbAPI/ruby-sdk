module Percl
  class Enqueue < JSONable
    attr_accessor :notificationUrl

    def initialize(queueId, waitUrl, notificationUrl)
      @queueId = queueId
      @waitUrl = waitUrl
      @notificationUrl = notificationUrl
    end

  end

  class Dequeue < JSONable
  end
end
