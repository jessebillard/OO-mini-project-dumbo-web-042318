
# ### `Ingredient`
# Build the following methods on the Ingredient class

class Ingredient

attr_accessor :type_of_ingredient

    @@all = []

    def initialize(type_of_ingredient)
        @type_of_ingredient = type_of_ingredient
        @@all << self
    end

# - `Ingredient.all`
# should return all of the ingredient instances
    def self.all
        @@all
    end 

# - `Ingredient.most_common_allergen`
# should return the ingredient instance that the highest number of users are allergic to
    def self.most_common_allergen

        allergy_array = Allergen.all.collect do |allergy|
            allergy.ingredient
        end 
        
        allergy_hash = allergy_array.reduce(Hash.new(0)) do |hash, allergy|
            hash[allergy] += 1
            hash
        end

        sorted_allergy_array = allergy_array.sort_by do |k, v|
            v
        end 
        sorted_allergy_array[-1]
        
    end 

end