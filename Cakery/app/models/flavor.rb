class Flavor < ApplicationRecord
    has_many :ingredients
    has_many :cakes, through: :ingredients

    validates :name, uniqueness: true
    
end
