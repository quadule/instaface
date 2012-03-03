class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :url
      t.string :thumbnail_url
      t.string :caption
      t.string :filter
      t.integer :distance
      t.string :username
      t.string :profile_picture_url
      t.string :link
      t.datetime :taken_at

      t.timestamps
    end
  end
end
