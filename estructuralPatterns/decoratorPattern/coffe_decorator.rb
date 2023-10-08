#  decorator
require_relative 'coffe'
class CoffeDecorator
  include Coffe

  def initialize(coffee, ingredient = '')
    @decorated_coffee = coffee
    @ingredient = ingredient
  end

  def cost
    @decorated_coffee.cost
  end

  def ingredients
    @decorated_coffee.ingredients
  end
end