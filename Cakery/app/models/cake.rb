class Cake < ApplicationRecord
    belongs_to :baker
    belongs_to :bakery
    has_many :ingredients
    has_many :flavors, through: :ingredients

<<<<<<< HEAD
    

    # def find_flavors
    #     self.ingredients.each do |ingredient|
    #         ingredient.flavor.name
    #     end
    # end
=======
    validates :name, uniqueness: true
    validates :dietary_restrictions, presence: true
    validates :serving_size, numericality: {greater_than: 0}
    validate :flavor_length

    def flavor_length
        if self.flavor_ids.length > 3
            self.errors.add(:flavor_ids, "Too many flavors")
        end
    end
>>>>>>> master


    # accepts_nested_attributes_for :flavors

    def flavors_attributes=(flavor_attributes)
        flavor_attributes.values.each do |flavor_attribute|
        flavor = Flavor.find_or_create_by(flavor_attribute)
        self.flavors << flavor
        end
    end

    
#     if @cake.dietary_restrictions
#      dr = @cake.dietary_restrictions
#      dr_parse = JSON.parse(dr) 
#      dr_parse.each do |dietary_restrictions|
#     = dietary_restrictions<br>
#     end
#   else
#     "none"
#   end

    # def flavors
    #     Ingredient.all.each do |ingredient|
    #         ingredient.flavor_id
    #     end
    # end



end
