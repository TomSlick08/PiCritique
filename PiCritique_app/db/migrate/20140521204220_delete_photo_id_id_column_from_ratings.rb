class DeletePhotoIdIdColumnFromRatings < ActiveRecord::Migration
 change_table :ratings do |t|
  t.remove :photo_id_id
	end
end
