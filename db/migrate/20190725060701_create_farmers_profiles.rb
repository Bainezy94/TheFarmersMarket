class CreateFarmersProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :farmers_profiles do |t|
      t.references :profile, foreign_key: true
      t.string :images
      t.text :bio
      t.references :market, foreign_key: true
      t.string :stall_name

      t.timestamps
    end
  end
end
