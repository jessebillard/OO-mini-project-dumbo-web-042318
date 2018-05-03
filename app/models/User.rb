# ### `User`
# Build the following methods on the User class

class User

    attr_accessor :name, :allergy

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end 

# - `User.all`
# should return all of the user instances
    def self.all
        @@all
    end

# - `User#recipes`
# should return all of the recipes this user has recipe cards for
      
        def recipe_cards 
            RecipeCard.all.select do |recipe|
                recipe.user == self
            end 
        end

        def recipes
            recipe_cards.collect do |recipe_info|
                recipe_info.recipe
            end 
        end 

# - `User#add_recipe_card`
# should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe 
        def add_recipe_card(recipe,date,rating)
            RecipeCard.new(date, self, recipe, rating)

        end

# - `User#declare_allergen`
# should accept an ingredient instance as an argument, and create a new allergen instance for this user and the given ingredient
        def declare_allergen(ingredient,allergy)
        Allergen.new(allergy, self, ingredient)
        end

# - `User#allergens`
# should return all of the ingredients this user is allergic to

        def allergens
            Allergen.all.select do |allergy|
                allergy.user == self 
            end 
        end 
        
        def get_allergens
            allergens.collect do |allergy| 
             allergy.ingredient 
         end
        end
# - `User#top_three_recipes`
# should return the top three highest rated recipes for this user.

        def get_user_recipes
            RecipeCard.all.select do |recipe_cards|
                recipe_cards.user == self 
            end
        end 

        def top_three_recipes
          rating_array=  get_user_recipes.sort_by! do |recipe|
                recipe.rating 
            end 
            top_three_array = rating_array[-3..-1]
                top_three_array.collect do |recipe_card|
                    recipe_card.recipe 
            end 
        end 
# - `User#most_recent_recipe`
# should return the recipe most recently added to the user's cookbook.
    def most_recent_recipe
        recent_recipe_array = get_user_recipes.collect do |recipe_card|
                recipe_card.recipe
           end
           recent_recipe_array[-1]
        end

### `**Bonus**`
# - `User#safe_recipes`
# should return all recipes that do not contain ingredients the user is allergic to
# - What other methods might be useful to have?

end