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

describe Post do
	it { should have_many(:comments) }
	it { should validate_presence_of(:title) }
	it { should validate_presence_of(:text_body) }

end

describe Comment do
	it { should validate_presence_of(:text_body) }

end



feature 'click on title' do
	before {Post.create(title: "Example Title", text_body: "Example Text Body")}
	after {Post.where("title = ?", "Example Title").destroy_all}


	scenario 'guests see all titles of all posts' do
		visit '/'
		expect(page).to have_content "Example Title"
	end

	scenario 'guest can click on title to be redirected to full post' do
		visit '/'
		click_link('Example Title')
		expect(page).to have_content "Example Text Body"
	end

end
