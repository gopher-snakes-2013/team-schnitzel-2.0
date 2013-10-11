class Post < ActiveRecord::Base
	validates_presence_of :title, :text_body
	has_many :comments
end