class Product < ApplicationRecord
  belongs_to :farmers_profile
  has_and_belongs_to_many :orders

  has_one_attached :image
end
