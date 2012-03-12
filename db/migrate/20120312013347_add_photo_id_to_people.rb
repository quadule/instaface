class AddPhotoIdToPeople < ActiveRecord::Migration
  def change
    add_column :people, :photo_id, :integer
  end
end
