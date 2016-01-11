class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :user_name, :string
    add_column :users, :avatar_url, :string
  end
end
