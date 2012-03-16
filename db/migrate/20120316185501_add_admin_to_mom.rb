class AddAdminToMom < ActiveRecord::Migration
  def change
    add_column :moms, :admin, :boolean

  end
end
