class Garage < ApplicationRecord
    validates :adress, :capacity, :manager, :businventory, presence: true
    validates :adress, uniqueness: true
end
