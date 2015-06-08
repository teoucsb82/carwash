class CreateSubscriptions < ActiveRecord::Migration
  def change
    create_table :subscriptions do |t|
      t.integer :plan_type, null: false
      t.string :status, null: false
      t.integer :location_id, null: false
      t.integer :user_id, null: false

      t.timestamps null: false
    end
    add_index :subscriptions, :user_id
  end
end
