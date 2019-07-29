class RemoveFarmerIdFromOrders < ActiveRecord::Migration[5.2]
  def change
    remove_column :orders, :farmer_id, :bigint
  end
end
