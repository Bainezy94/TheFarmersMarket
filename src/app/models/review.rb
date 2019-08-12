class Review < ApplicationRecord
  belongs_to :profile
  belongs_to :farmers_profile
end
