class CreateMarkets < ActiveRecord::Migration[5.2]
  def change
    create_table :markets do |t|
      t.string :name
      t.text :location
      t.text :bio
      t.text :opening_hours

      t.timestamps
    end
  end
end
