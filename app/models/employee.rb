class Employee < ApplicationRecord
    validates :name, :lastaname, :station, :workshift, presence: true
end
