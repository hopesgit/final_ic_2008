require "./lib/ingredient"
require "./lib/recipe"
require "minitest/autorun"
require "minitest/pride"

class RecipeTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_is_recipe
    assert_instance_of Recipe, @recipe1
  end
end
