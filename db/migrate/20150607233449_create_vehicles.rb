class CreateVehicles < ActiveRecord::Migration
  def change
    create_table :vehicles do |t|
      t.integer :year
      t.string :make, null: false
      t.string :model, null: false
      t.string :color
      t.string :licenseplate, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :vehicles, :user_id
  end
end
