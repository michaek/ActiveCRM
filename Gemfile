source 'http://rubygems.org'

gem 'rails', '3.1.0.rc6'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

# controller/view
gem 'simple_form'
gem 'haml'
gem 'haml-rails'
gem 'inherited_resources'
gem 'validation_reflection'
gem 'jquery-rails' # rails generate jquery:install --ui
gem 'crummy'
gem "semantic_menu", :git => "git://github.com/michaek/semantic_menu.git"
gem "uuidtools"
gem "jquery_ui_rails_helpers", :git => "git://github.com/beardedstudio/jquery_ui_rails_helpers.git"
gem 'awesome_nested_set'

# Admin interface
gem "meta_search",    '>= 1.1.0.pre' # required by activeadmin
gem 'activeadmin', :git => 'git://github.com/gregbell/active_admin.git'
gem 'activecrm_members', :git => '/Users/michael/Library/Dev/activecrm_members/'

# Soft delete
gem 'acts_as_archive'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
  gem 'uglifier'
end

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do

  # Sqlite gem, since heroku uses PostgreSQL
  gem 'sqlite3-ruby', '1.3.1', :require => "sqlite3"
  # gem 'pg', '0.10.1'

  gem 'annotate'
  gem 'scaffolder', :git => 'git://github.com/beardedstudio/scaffolder.git'

  gem 'hpricot'
  gem 'ruby_parser'

  # this one for the scaffolds, g
  gem 'rails3-generators', :git => 'git://github.com/michaek/rails3-generators.git'

  # model
  gem 'factory_girl_rails'
  
  # testing
  gem 'rspec'
  gem 'rspec-rails'

end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
