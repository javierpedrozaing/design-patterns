#  concrete decorator
require_relative 'coffe_decorator'

class MilkCoffeDecorator < CoffeDecorator  

  def initialize(coffe, ingredient)
    @ingredient = ingredient
    super(coffe, ingredient)
  end

  def cost
    @decorated_coffee.cost + 500
  end

  def ingredients
    @decorated_coffee.ingredients << @ingredient
  end

  def make
    puts "Adding milk to the coffe"    
  end
end