require_relative '../config/environment.rb'
require_relative '../app/models/Allergen.rb'
require_relative '../app/models/Ingredient.rb'
require_relative '../app/models/RecipeIngredient.rb'
require_relative '../app/models/User.rb'
require_relative '../app/models/RecipeCard.rb'
require_relative '../app/models/Recipe.rb'

bob = User.new("bob")
tim = User.new("tim")
carlos = User.new("carlos")
bartholomew =User.new("bartholomew")

lasagna = Recipe.new("lasagna")
pizza = Recipe.new("pizza")
pb_j = Recipe.new("pb_j")
cheesecake = Recipe.new("cheesecake")

lasagna_card = RecipeCard.new("8/23/12", bob, lasagna, 8)
lasagna_card2 = RecipeCard.new("7/23/12", bartholomew, lasagna, 9)
pizza_card = RecipeCard.new("4/21/18", bob, pizza, 2)
pbj_card = RecipeCard.new("5/21/18", bob, pb_j, 9)

tomato = Ingredient.new("tomato")
mozzarella = Ingredient.new("mozzarella")
peanut = Ingredient.new("peanut")
shrimp = Ingredient.new("shrimp")

lasagna_tomato = RecipeIngredient.new(lasagna, tomato)
pizza_tomato = RecipeIngredient.new(pizza, tomato)

peanut_allergen = Allergen.new("peanut_allergen", bob, peanut)
lactose_allergen = Allergen.new("lactose_allergen", tim, mozzarella)
shellfish_allergen = Allergen.new(Allergen::SHELLFISH, carlos, shrimp)
shellfish_allergen = Allergen.new(Allergen::SHELLFISH, bob, shrimp)
peanut_allergen2 = Allergen.new("peanut_allergen", bartholomew, peanut)
bob.add_recipe_card(cheesecake, "08/12/18", 10)

binding.pry
1