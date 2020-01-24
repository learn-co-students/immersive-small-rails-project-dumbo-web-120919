class Baker < ApplicationRecord
    has_many :cakes
    belongs_to :bakery

    # validates :name, presence: true
    # validates :bio, presence: true, length: {maximum: 250}
     
end
