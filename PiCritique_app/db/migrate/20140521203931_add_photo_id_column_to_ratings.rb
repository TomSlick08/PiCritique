class AddPhotoIdColumnToRatings < ActiveRecord::Migration
  def self.up
    change_table :ratings do |t|
      t.references :photo
    end
  end

end
