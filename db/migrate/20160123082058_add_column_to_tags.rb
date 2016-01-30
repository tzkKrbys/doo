class AddColumnToTags < ActiveRecord::Migration
  def change
    add_column :tags, :interest_id, :integer
  end
end
