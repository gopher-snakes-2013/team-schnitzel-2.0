class CreateCommentsTable < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
  		t.string :text_body
  		t.timestamps
  	end
  end
end
