source 'https://rubygems.org'

gem 'rails', '4.2.5'

gem 'rails-api'

# Postgres
gem 'pg'

# Use Puma as the app server
gem 'puma'

# OAuth2 server
gem 'doorkeeper'

# API development
gem 'grape'
gem 'grape-entity'
gem 'grape-doorkeeper'
gem 'grape-kaminari'
gem 'grape-active_model_serializers'
gem 'hashie-forbidden_attributes'
gem 'grape-scaffold'

# Soft delete
gem 'paranoia', '~> 2.0'
# Generate ERD diagram
gem 'rails-erd'
# Introspects your database string field maximum lengths and automatically defines length validations.
gem 'validates_lengths_from_database'
# Attachment for images and files
gem 'paperclip'
# validates date and time
gem 'jc-validates_timeliness'
# Votable ActiveRecord for Rails
gem 'acts_as_votable', '~> 0.10.0'

gem 'dotenv-rails'

# i18n gem
gem 'rails-i18n', '~> 4.0.0'
gem 'i18n_data'

# Populate dummy data
gem 'populator'
gem 'random_data'
gem 'faker'

group :development do
  gem 'annotate', require: false
  gem 'bullet'
  gem 'capistrano', '~> 3.4.0'
  gem 'capistrano3-unicorn'
  gem 'capistrano3-nginx', '~> 2.0'
  gem 'capistrano-rails', '~> 1.1'
  gem 'capistrano-rvm'
  gem 'letter_opener'
end

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem 'rack-cors', :require => 'rack/cors'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# Gem for swagger documentation
gem 'grape-swagger'
gem 'grape-swagger-rails'

# Debugging
gem 'pry-rails', :group => :development

# ERD Diagram generation for the application
gem "rails-erd"

# Gem to Annotate Rails classes with schema and routes info 
gem 'annotate'

