class CreateMoms < ActiveRecord::Migration
  def change
    create_table :moms do |t|
      t.string :name
      t.string :email
      t.integer :age
      t.string :children
      t.string :education
      t.string :neighborhood
      t.string :tvshow
      t.string :hobby
      t.string :pets
      t.string :work

      t.timestamps
    end
  end
end
