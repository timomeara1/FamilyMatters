class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :photo_id
      t.string :name
      t.text :caption

      t.timestamps
    end
  end
end
