class Order < ApplicationRecord
  belongs_to :farmers_profile
  belongs_to :profile
  has_many :products
end
