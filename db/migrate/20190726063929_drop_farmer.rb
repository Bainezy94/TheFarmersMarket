class DropFarmer < ActiveRecord::Migration[5.2]
  def change
    drop_table :farmers
  end
end
