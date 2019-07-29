class Profile < ApplicationRecord
    belongs_to :user
    has_many :reviews
    has_one :farmers_profile
    has_many :orders
end
