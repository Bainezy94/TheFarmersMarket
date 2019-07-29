class Product < ApplicationRecord
  belongs_to :farmers_profile
  has_many :orders
end
