require 'simplecov'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter[
  SimpleCov::Formatter::HTMLFormatter
]
SimpleCov.start 'rails'

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'
require "minitest/rails"
require "minitest/spec"
require "minitest/pride"
require "minitest/focus"
require "minitest/rails/capybara"
# require 'selenium-webdriver'

require 'ffaker'

require 'spree/testing_support/factories'
require 'spree/testing_support/controller_requests'
# require 'spree/testing_support/authorization_helpers'
require 'spree/testing_support/url_helpers'

class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!
  include FactoryGirl::Syntax::Methods
end

class ActionController::TestCase
  include FactoryGirl::Syntax::Methods
  include Devise::TestHelpers
  include Spree::TestingSupport::UrlHelpers
end

class ActionView::TestCase
  include FactoryGirl::Syntax::Methods
  include Devise::TestHelpers
end

class ActionMailer::TestCase
  include FactoryGirl::Syntax::Methods
end
