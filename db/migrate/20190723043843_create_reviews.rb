class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.references :profile, foreign_key: true
      t.references :farmer, foreign_key: true
      t.string :rating
      t.text :comment

      t.timestamps
    end
  end
end
