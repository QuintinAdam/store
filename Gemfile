source 'https://rubygems.org'
ruby '2.2.2'

gem 'rails', '4.2.2'
gem 'pg'
gem 'puma'
gem 'devise'
gem 'figaro'

gem 'haml-rails'
gem 'simple_form'
gem 'font-awesome-rails'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

gem 'jquery-rails'
gem 'jquery-turbolinks'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

# gem 'aws-sdk', '~> 1.40.3'
# gem 'unf'

# gem 'braintree', '~> 2.43.0'

# gem 'rack-ssl-enforcer'

# Logging
# gem 'lograge' # more readable logs
# gem 'logstash-event' # for logstash json format

group :development do
  gem 'powder'
  gem 'letter_opener'
  gem 'better_errors'
  gem 'binding_of_caller'
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
  gem 'ruby_gntp'
end

group :development, :test do
  gem 'jazz_fingers'
  gem 'rubocop'
  gem 'ffaker'
  gem 'factory_girl_rails'
  gem 'minitest-focus'
  gem 'minitest-rails-capybara' # gem 'minitest' - gem 'minitest-rails' - gem 'minitest-capybara' - gem 'capybara'
  gem 'web-console'
  # gem 'selenium-webdriver'
end

group :test do
  gem 'simplecov', require: false
end

group :production, :staging do
  gem 'rails_12factor'
end

gem 'spree', git: 'git@github.com:spree/spree.git', branch: '3-0-stable'
gem 'spree_auth_devise', git: 'git@github.com:spree/spree_auth_devise.git', branch: '3-0-stable'
gem 'spree_gateway', git: 'git@github.com:spree/spree_gateway.git', branch: '3-0-stable'
gem 'spree_admin_bar', git: 'git@github.com:QuintinAdam/spree_admin_bar.git', branch: '3-0-stable'
gem 'spree_social', github: 'spree-contrib/spree_social', branch: '3-0-stable'
gem 'spree_social_products', git: 'git@github.com:spree-contrib/spree_social_products.git', branch: '3-0-stable'
gem 'spree_contact_us', git:'git@github.com:spree-contrib/spree_contact_us.git', branch: '3-0-stable'
gem 'spree_recently_viewed', github: 'spree-contrib/spree_recently_viewed', branch: '3-0-stable'
gem 'spree_static_content', github: 'spree/spree_static_content', branch: '3-0-stable'
gem 'spree_quick_view', git: 'git@github.com:ronzalo/spree_quick_view.git', branch: 'master'
gem 'spree_slider', git: 'git@github.com:spree-contrib/spree_slider.git', branch: '3-0-stable'
gem 'spree_product_zoom', git: 'git@github.com:spree-contrib/spree_product_zoom.git', branch: '3-0-stable'
