class Trip < ApplicationRecord
    belongs_to :user
    has_many :places
    has_many :hotels
    has_many :transportations
    has_many :carryons
end
