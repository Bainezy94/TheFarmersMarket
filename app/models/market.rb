class Market < ApplicationRecord
    has_many :farmers_profile, dependent: :destroy
end
