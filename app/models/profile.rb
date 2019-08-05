class Profile < ApplicationRecord
    belongs_to :user, dependent: :destroy
    has_many :reviews, dependent: :destroy
    has_one :farmers_profile
    has_many :orders, dependent: :destroy
end
