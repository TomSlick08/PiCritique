class AddContentColumnsToPhotos < ActiveRecord::Migration
  	def self.up
	    add_attachment :photos, :content
	  end

	  def self.down
	    remove_attachment :photos, :content
	  end
end

