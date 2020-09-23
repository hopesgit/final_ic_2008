require "./lib/ingredient"
require "./lib/recipe"
require "./lib/cook_book"
require "minitest/autorun"
require "minitest/pride"

class CookBookTest < Minitest::Test
  def setup
    @cookbook = CookBook.new
    @recipe2 = Recipe.new("Cheese Burger")
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "C", calories: 100})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 30})
    @recipe1 = Recipe.new("Mac and Cheese")
  end

  def test_it_is_cookbook
    assert_instance_of CookBook, @cookbook
  end
end
