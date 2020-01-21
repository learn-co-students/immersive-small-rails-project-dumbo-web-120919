class Cake < ApplicationRecord
    belongs_to :baker
    belongs_to :bakery
    has_many :ingredients
    has_many :flavors, through: :ingredients
end
