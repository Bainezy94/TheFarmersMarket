class RemoveFarmerIdFromReview < ActiveRecord::Migration[5.2]
  def change
    remove_column :reviews, :farmer_id, :bigint
  end
end
