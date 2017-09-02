class Client < ApplicationRecord
    validates :idcard, :name, :benefit, :balance, presence:true
    validates :idcard, uniqueness:true
end
