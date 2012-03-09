class AddPasswordDigestToMom < ActiveRecord::Migration
  def change
    add_column :moms, :password_digest, :string

  end
end
