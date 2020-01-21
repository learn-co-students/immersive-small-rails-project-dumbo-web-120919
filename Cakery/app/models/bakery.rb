class Bakery < ApplicationRecord
    has_many :bakers
    has_many :cakes 
end
