class Location < ApplicationRecord
    has_many :user_locations
    has_many :users, through: :user_locations

    validates :name, presence: true, uniqueness: true
    validates :address, presence: true, uniqueness: true
    validates :city, presence: true
end
