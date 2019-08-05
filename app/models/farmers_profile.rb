class FarmersProfile < ApplicationRecord
  belongs_to :profile
  belongs_to :market
  has_many :products, dependent: :destroy
  has_many :orders, dependent: :destroy
end
