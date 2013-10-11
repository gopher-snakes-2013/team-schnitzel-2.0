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
Guest may see responses in discussion
=end

describe Post do
	it { should have_many(:comments) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:text_body) }

end

describe Comment do
	it { should validate_presence_of(:text_body) }

end

feature 'title appears on root' do
	scenario 'they see all titles of all posts' do
		visit '/'
		expect(page).to have_content "title"
	end
end

feature 'click on title' do
	before :each do
		post = post
	end

	scenario 'guest can click on title to be redirected to full post' do
		visit '/'
		click_link('title')
	end

end
