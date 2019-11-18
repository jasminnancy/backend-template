class Luggage < ApplicationRecord
    belongs_to :user
    has_many :carryons
end
