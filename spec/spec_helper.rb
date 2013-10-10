$LOAD_PATH.unshift(File.expand_path('.'))

# require 'shoulda-matchers'
require 'capybara/rspec'
require 'forum_app'

Capybara.app = Sinatra::Application




