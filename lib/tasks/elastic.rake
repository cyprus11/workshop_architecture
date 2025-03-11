namespace :elastic do
  desc 'Индексация сущностей в эластике: bundle exec rails elastic:index_run[book]'
  task :index_run, [ :model_name ] => [ :environment ] do |task, args|
    index = "#{args.model_name.classify.pluralize}Index".safe_constantize

    puts 'Неизвестный индекс' and return if index.nil?

    index.reset!
  end
end
