class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :from
      t.text :description
      t.string :catagory
      t.integer :mom_id

      t.timestamps
    end
  end
end
