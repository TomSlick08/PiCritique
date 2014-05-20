class CreateRating < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
    	t.integer :setting
    	t.integer :hotness
    	t.integer :originality
    	t.integer :style
    	t.integer :attitude
    end
  end
end
