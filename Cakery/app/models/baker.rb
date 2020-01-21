class Baker < ApplicationRecord
    has_many :cakes
    belongs_to :bakery
end
