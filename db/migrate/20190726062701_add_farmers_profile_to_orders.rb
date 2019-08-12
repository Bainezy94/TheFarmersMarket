class AddFarmersProfileToOrders < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :farmers_profile, foreign_key: true
  end
end
