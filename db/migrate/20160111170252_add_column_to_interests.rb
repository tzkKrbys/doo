class AddColumnToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :user_id, :string
  end
end
