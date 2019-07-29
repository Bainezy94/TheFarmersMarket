class Order < ApplicationRecord
  belongs_to :farmers_profile
  belongs_to :profile
  belongs_to :product
end
