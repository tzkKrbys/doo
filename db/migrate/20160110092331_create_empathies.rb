class CreateEmpathies < ActiveRecord::Migration
  def change
    create_table :empathies do |t|

      t.timestamps null: false
    end
  end
end
