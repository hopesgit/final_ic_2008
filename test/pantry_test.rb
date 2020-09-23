require "./lib/pantry"
require "./lib/ingredient"
require "minitest/autorun"
require "minitest/pride"

class PantryTest < Minitest::Test
  def setup
    @pantry = Pantry.new
    @ingredient1 = Ingredient.new({name: "Cheese", unit: "oz", calories: 50})
    @ingredient2 = Ingredient.new({name: "Macaroni", unit: "oz", calories: 200})
  end

  def test_it_is_pantry
    assert_instance_of Pantry, @pantry
  end

  def test_it_has_stock
    assert_instance_of Hash,  @pantry.stock
  end

  def test_it_can_handle_stock
    assert_equal 0, @pantry.stock_check(@ingredient1)

    @pantry.restock(@ingredient1, 5)
    @pantry.restock(@ingredient1, 10)

    assert_equal 15, @pantry.stock_check(@ingredient1)

    @pantry.restock(@ingredient2, 7)

    assert_equal 7, @pantry.stock_check(@ingredient2)
  end
end
