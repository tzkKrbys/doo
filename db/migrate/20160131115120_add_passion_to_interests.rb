class AddPassionToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :passion, :integer
  end
end
