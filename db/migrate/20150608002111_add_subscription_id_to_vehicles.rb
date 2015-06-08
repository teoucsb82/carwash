class AddSubscriptionIdToVehicles < ActiveRecord::Migration
  def change
    add_column :vehicles, :subscription_id, :integer
  end
end
