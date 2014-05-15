class AddCoverPhotoColumnsToAlbums < ActiveRecord::Migration
	  def self.up
	    add_attachment :albums, :cover_photo
	  end

	  def self.down
	    remove_attachment :albums, :cover_photo
	  end
end
