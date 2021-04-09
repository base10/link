source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.7.2"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 6.1.3"

gem "action_policy"
gem "bcrypt", "~> 3.1.7"
gem "devise"
gem "jbuilder", "~> 2.7"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "redis", "~> 4.0"
gem "simple_form"
gem "tailwindcss-rails"
gem "turbolinks", "~> 5"

# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem "webpacker", "~> 5.0"

# gem "rack-mini-profiler"
# gem "flamegraph"
# gem "memory_profiler"
# gem "stackprof"

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.4.4", require: false

group :development, :test do
  # Call "byebug" anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]

  gem "awesome_print"
  gem "benchmark-ips", "~> 2.7.2"
  gem "bullet"
  gem "bundler-audit", ">= 0.5.0", require: false
  gem "capybara"
  gem "capybara-screenshot"
  gem "dotenv-rails"
  gem "factory_bot_rails", "~> 6.1"
  gem "pry-byebug"
  gem "pry-rails"
  gem "rspec-rails", "~> 4.0"
  gem "shoulda-matchers"
  gem "test-prof"
end

group :development do
  gem "foreman", require: false
  gem "listen", "~> 3.3"
  gem "rubocop", require: false
  gem "rubocop-performance"
  gem "rubocop-rails"
  gem "rubocop-rspec"

  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-commands-rspec"

  # Access an interactive console on exception pages or by calling "console" anywhere in the code.
  gem "web-console", ">= 4.1.0"
end

group :test do
  gem "formulaic"
  gem "simplecov", require: false
  gem "webmock"
end
