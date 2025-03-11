class KarafkaApp < Karafka::App
  setup do |config|
    config.client_id = 'library'
    config.kafka = {
      'bootstrap.servers': ENV.fetch('KAFKA_BROKER', '127.0.0.1:9092')
    }
  end
end
