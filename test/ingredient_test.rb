require "./lib/ingredient"
require "minitest/autorun"
require "minitest/pride"

class IngredientTest < Minitest::Test
  def setup
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
  end

  def test_it_is_ingredient
    assert_instance_of Ingredient, @ingredient1
  end
end
