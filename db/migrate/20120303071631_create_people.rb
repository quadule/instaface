class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.text :data

      t.timestamps
    end
  end
end
