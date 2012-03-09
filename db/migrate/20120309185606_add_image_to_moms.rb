class AddImageToMoms < ActiveRecord::Migration
  def change
    add_column :moms, :image, :string

  end
end
