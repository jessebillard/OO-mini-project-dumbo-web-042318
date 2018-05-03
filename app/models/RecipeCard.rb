# ### `RecipeCard`
# A RecipeCard is the join between a user instance and a recipe instance.  This is a has-many-through relationship.
# Build the following methods on the RecipeCard class:  

class RecipeCard

    attr_accessor :user, :recipe, :date, :rating

    @@all = []

    def initialize(date, user, recipe, rating)
        @user = user
        @recipe = recipe
        @date = date
        @rating = rating
        @@all << self
    end 

# - `RecipeCard.all`
# should return all of the RecipeCard instances
    def self.all
        @@all 
    end 

# - `RecipeCard#date`
# should return the date of the entry
    def date
        @date
    end 

# - `RecipeCard#rating`
# should return the rating (an integer) a user has given their entry
    def rating
        @rating
    end 

# - `RecipeCard#user`
# should return the user to which the entry belongs
    def user
        @user
    end 
# - `RecipeCard#recipe`
# should return the recipe to which the entry belongs
    def recipe
        @recipe
    end 
end