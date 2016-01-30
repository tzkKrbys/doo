class CreateEmpathies < ActiveRecord::Migration
  def change
    create_table :empathies do |t|
      t.integer :interest_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
