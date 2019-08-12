class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.string :name
      t.string :image
      t.text :description
      t.string :price
      t.date :picked_date
      t.boolean :active
      t.decimal :amount_available

      t.timestamps
    end
  end
end
