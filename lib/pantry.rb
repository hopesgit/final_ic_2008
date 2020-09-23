class Pantry
  attr_reader :stock

  def initialize
    @stock = Hash.new(0)
  end

  def stock_check(ingredient)
    @stock[ingredient]
  end

  def restock(ingredient, qty)
    @stock[ingredient] += qty
  end

  def enough_ingredients_for?(recipe)
    recipe.ingredients_required.all? do |ingredient|
      # require "pry"; binding.pry
      ingredient[1] <= stock_check(ingredient[0])
    end
  end
end
