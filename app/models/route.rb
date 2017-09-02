class Route < ApplicationRecord
    validates :name, :color, :stops, :stations, presence: true
    validates :name, uniqueness: true, length: {maximum:1}
    
end
