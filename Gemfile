source 'https://rubygems.org'
ruby '2.2.0'

gem 'rails', '4.2.0'
gem 'pg'
gem 'puma'

gem 'devise'

gem 'haml-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

gem 'foundation-rails'
gem 'font-awesome-rails'

gem 'high_voltage'
gem 'simple_form'
gem 'figaro', '>= 1.0.0.rc1'
gem 'friendly_id'
gem 'cocoon'
gem "paperclip", "~> 4.2"

group :development do
  gem 'awesome_print', require: false
  gem 'powder'
  gem 'letter_opener'
  gem 'better_errors'
  gem 'binding_of_caller', :platforms=>[:mri_21]
  gem 'meta_request'
  gem 'xray-rails'
  gem 'html2haml'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'annotate', '~> 2.6.5'

  gem 'guard'
  gem 'guard-bundler'
  gem 'guard-minitest'
  gem 'guard-pow'
  gem 'guard-livereload'
  gem 'rack-livereload'
  gem 'ruby_gntp'
  gem 'mail_form'
end

group :development, :test do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'pry-remote'
  gem 'rubocop'
  gem 'ffaker'
  gem 'factory_girl_rails'
  gem 'minitest-rails'
end

group :test do
  # gem 'vcr'
  # gem 'webmock'
  # gem 'capybara'
  # gem 'coveralls', require: false
  gem 'simplecov', require: false
end

group :production, :staging do
  gem 'rails_12factor'
end

gem 'spree', github: 'spree/spree', branch: 'rails-4-2'
gem 'spree_gateway', github: 'spree/spree_gateway', branch: 'master'
gem 'spree_auth_devise', github: 'spree/spree_auth_devise', branch: 'master'
