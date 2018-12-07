require 'sidekiq'

Sidekiq.configure_client do |config|
  config.redis = { url: 'redis://redis:6379', namespace: 'sidekiq' }
end
Sidekiq.configure_server do |config|
  config.redis = { url: 'redis://redis:6379', namespace: 'sidekiq' }
end

Dir.glob('./workers/*.rb') { |f| require f }
