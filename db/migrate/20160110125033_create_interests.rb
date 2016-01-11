class CreateInterests < ActiveRecord::Migration
  def change
    create_table :interests do |t|
      t.text :title

      t.timestamps null: false
    end
  end
end
