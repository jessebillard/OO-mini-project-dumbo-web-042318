# ### `Allergen`
# An Allergen is a join between a user and an ingredient.  This is a has-many-through relationship.  What methods should an instance of this model respond to?

class Allergen
SHELLFISH = "shrimp"
    attr_accessor :allergy, :user, :ingredient

    @@all = []

    def initialize(allergy, user, ingredient)
        @allergy = allergy
        @user = user
        @ingredient = ingredient
        @@all << self
    end 

    # - `Allergen.all`
# should return all of the Allergen instances
    def self.all
        @@all
    end 


end 