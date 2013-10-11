class Comment < ActiveRecord::Base
	validates_presence_of :text_body
	belongs_to :post
end