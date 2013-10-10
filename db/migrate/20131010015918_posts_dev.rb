class PostsDev < ActiveRecord::Migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.string :text_body
  		t.timestamps
  	end
  end

  def down
  	drop_table :posts
  end
end
