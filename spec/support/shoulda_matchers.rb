# frozen_string_literal: true

Shoulda::Matchers.configure do |config|
  # Integrate shoulda-matchers with the preferred test framework and library.
  # More information: https://github.com/thoughtbot/shoulda-matchers#rspec
  config.integrate do |integrate_with|
    # Configure the test framework to integrate with.
    integrate_with.test_framework :rspec

    # Configure the library to include matchers for. Choose between
    # ActiveRecord, ActiveModel, ActionController, or Rails, which includes all
    # of the aforementioned.
    integrate_with.library :rails
  end
end
