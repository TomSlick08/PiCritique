class CreateComment < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.integer :upvotes
    	t.string :content
    end
  end
end
