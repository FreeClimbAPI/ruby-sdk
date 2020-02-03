module Percl
  class Enqueue < JSONable
    attr_accessor :notificationUrl

    def initialize(queueId, waitUrl, actionUrl)
      @queueId = queueId
      @waitUrl = waitUrl
      @actionUrl = actionUrl
    end

  end

  class Dequeue < JSONable
  end
end
