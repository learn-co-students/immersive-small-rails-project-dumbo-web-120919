class Ingredient < ApplicationRecord
    belongs_to :cake
    belongs_to :flavor
end
