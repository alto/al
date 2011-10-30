require 'rubygems'
require 'test/unit'
# require 'ruby-debug'

# $:.push File.expand_path("../../lib", __FILE__)

# configure the Rails application
ENV["RAILS_ENV"] = "test"
require File.expand_path("../dummy/config/environment.rb",  __FILE__)
ActionMailer::Base.delivery_method = :test
ActionMailer::Base.perform_deliveries = true
ActionMailer::Base.default_url_options[:host] = "test.com"
Rails.backtrace_cleaner.remove_silencers!
# Configure capybara for integration testing
require "capybara/rails"
Capybara.default_driver   = :rack_test
Capybara.default_selector = :css
# Run any available migration
ActiveRecord::Migrator.migrate File.expand_path("../dummy/db/migrate/", __FILE__)

# Load support files
Dir["#{File.dirname(__FILE__)}/test_helpers/**/*.rb"].each { |f| require f }

require File.dirname(__FILE__) + '/../lib/al.rb'
require 'assert_json'
