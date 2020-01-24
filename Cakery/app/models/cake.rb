class Cake < ApplicationRecord
    belongs_to :baker
    belongs_to :bakery
    has_many :ingredients
    has_many :flavors, through: :ingredients

    serialize :cake, Array

    def find_flavors
        self.ingredients.each do |ingredient|
            ingredient.flavor.name
        end
    end

end
