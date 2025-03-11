class ApplicationProducer
  class << self
    def deliver(topic:, message:)
      producer.produce_async(
        topic: topic,
        payload: message.to_json
      )
      producer.close
    end

    private

    def producer
      @producer ||= Karafka.producer
    end
  end
end
