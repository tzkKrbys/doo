class AddTagsIdToInterests < ActiveRecord::Migration
  def change
    add_column :interests, :tags_id, :integer
  end
end
