# frozen_string_literal: true

source "https://rubygems.org"

ruby "2.4.1"

gem "rails", "5.1.2"

# Database adapter
gem "pg", "~> 0.20"

# Web server
gem "puma", "~> 3.7"

# Template pre-processors
gem "sass-rails", github: "rails/sass-rails"
gem "slim-rails", github: "slim-template/slim-rails"

# JavaScript compressor
gem "uglifier"

gem "turbolinks", "~> 5"

group :test do
  # Test runner
  gem "rspec-rails"

  # Feature test runner & driver
  gem "capybara"
  gem "capybara-webkit"

  # Rails DSL assertions
  gem "shoulda-matchers"

  # Coverage statistics
  gem "simplecov"

  # Coverage reporting
  gem "codeclimate-test-reporter"
end

group :development, :test do
  # Fixture generator
  gem "factory_girl_rails"
end

group :development do
  # Application preloader
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"

  # Linters
  gem "rubocop"
  gem "scss_lint"
  gem "slim_lint"

  # Documentation generator
  gem "yard"
end
