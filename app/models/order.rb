class Order < ApplicationRecord
  belongs_to :farmers_profile
  belongs_to :profile
  has_and_belongs_to_many :products
end
