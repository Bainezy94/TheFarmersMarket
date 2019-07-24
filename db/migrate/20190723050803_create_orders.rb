class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :farmer, foreign_key: true
      t.references :profile, foreign_key: true
      t.references :product, foreign_key: true
      t.string :volume

      t.timestamps
    end
  end
end
