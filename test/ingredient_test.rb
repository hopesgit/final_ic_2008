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

  def test_it_has_attrs
    assert_equal "Cheese", @ingredient1.name
    assert_equal "oz", @ingredient1.unit
    assert_equal 50, @ingredient1.calories
  end
end
