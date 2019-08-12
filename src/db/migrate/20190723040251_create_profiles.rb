class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.string :name
      t.string :avatar
      t.string :phone_number
      t.string :email

      t.timestamps
    end
  end
end
