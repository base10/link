web: bundle exec puma -p $PORT -C ./config/puma.rb
sidekiq: bundle exec sidekiq 2>&1 | logger -t sidekiq
assets: bin/webpack-dev-server
