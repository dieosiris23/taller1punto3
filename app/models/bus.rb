class Bus < ApplicationRecord
    validates :licenseplate, :capacity, :brand, :startdate, presence: true
    validates :licenseplate, length: { maximum: 7 }, uniqueness: true
    validates :capacity, numericality: { less_than:105 }
end
