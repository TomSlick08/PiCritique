class CreatePhoto < ActiveRecord::Migration
  def change
    create_table :photos do |t|
    	t.string :name
    	t.string :caption
    	t.belongs_to :album
    end
  end
end
