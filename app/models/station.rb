class Station < ApplicationRecord
    validates :name, :branch, :routes, presence: true
end
