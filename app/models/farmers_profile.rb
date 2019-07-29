class FarmersProfile < ApplicationRecord
  belongs_to :profile
  belongs_to :market
  has_many :products
  has_many :orders
end
