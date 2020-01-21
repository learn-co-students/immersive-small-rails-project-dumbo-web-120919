class Flavor < ApplicationRecord
    has_many :ingredients
    has_many :cakes, through: :ingredients
    
end
