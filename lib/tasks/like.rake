desc 'Ставим like'
task like: :environment do
  json_path = Rails.root.join('spec', 'fixtures', 'like.json').to_path
  message = JSON.parse(File.read(json_path))
  ServicesProducer.deliver(message: message)
end
