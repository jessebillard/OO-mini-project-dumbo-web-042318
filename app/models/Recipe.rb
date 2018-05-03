# ### `Recipe`
# Build the following methods on the Recipe class

class Recipe

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

# - `Recipe.all`
# should return all of the recipe instances
    def self.all
        @@all
    end 

# - `Recipe.most_popular`
# should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)

# - `Recipe#users`
# should return the user instances who have recipe cards with this recipe
        def get_users
            RecipeCard.all.select do |recipe_card|
                recipe_card.recipe == self 
            end
        end

        def users 
            get_users.collect do |recipe_card|
                recipe_card.user
            end
        end 
# - `Recipe#ingredients`
# should return all of the ingredients in this recipe

        def get_ingredients
            RecipeIngredient.all.select do |stuff|
                stuff.recipe == self 
            end 
        end

        def ingredients
            get_ingredients.collect do |double_stuff|
                double_stuff.ingredient
            end
        end

# - `Recipe#allergens`
# should return all of the ingredients in this recipe that are allergens
# - `Recipe#add_ingredients`
# should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe

end