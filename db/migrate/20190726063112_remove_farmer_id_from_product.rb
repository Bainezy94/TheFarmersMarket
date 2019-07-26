class RemoveFarmerIdFromProduct < ActiveRecord::Migration[5.2]
  def change
    remove_column :products, :farmer_id, :bigint
  end
end
