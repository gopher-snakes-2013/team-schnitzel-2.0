require 'spec_helper'
require 'models/post'
require 'models/comment'

# RELEASE 1:

feature 'guest visits page' do
	scenario "they see text" do
		visit '/'
		expect(page).to have_content "Umlaute, inc"
		expect(page).to have_content "state your"
	end
end


# RELEASE 2:

=begin
Guest stories:
Guest may respond to discussion
Poster must provide body when responding to discussion
Guest may see responses in discussion
=end

describe Post do
	it { should have_many(:comments) }
end
