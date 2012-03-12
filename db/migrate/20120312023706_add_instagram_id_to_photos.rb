class AddInstagramIdToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :instagram_id, :string
    add_index :photos, :instagram_id, :unique => true
  end
end
