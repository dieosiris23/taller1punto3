class Driver < ApplicationRecord
    validates :name, :bus, :routes, :salary, :tours, presence: true
    validates :tours, numericality: { less_than:7 }
end
