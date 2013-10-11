$LOAD_PATH.unshift(File.expand_path('.'))

require 'capybara/rspec'
require 'forum_app'
require 'shoulda-matchers'

Capybara.app = Sinatra::Application

RSpec.configure do |config|
	config.before do
		Post.destroy_all
		Comment.destroy_all
	end
end


