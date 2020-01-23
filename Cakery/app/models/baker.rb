class Baker < ApplicationRecord
    has_many :cakes
    belongs_to :bakery

    validates :name, presence: true
    
     
end
