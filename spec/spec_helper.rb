$LOAD_PATH.unshift(File.expand_path('.'))

require 'capybara/rspec'
require 'forum_app'
require 'shoulda-matchers'

Capybara.app = Sinatra::Application




