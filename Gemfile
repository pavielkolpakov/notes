source "https://rubygems.org"

ruby "3.2.0"

gem "rails", "~> 7.1.3", ">= 7.1.3.2"
gem "mysql2", "~> 0.5"
gem "puma", ">= 5.0"
gem "redis", ">= 4.0.1"
gem 'sidekiq', '~> 5.2.8'
gem "sidekiq-cron"

gem "tzinfo-data", platforms: %i[ windows jruby ]
gem "bootsnap", require: false

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]
  gem "factory_bot_rails"
end

group :test do
  gem "rspec-rails"
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

