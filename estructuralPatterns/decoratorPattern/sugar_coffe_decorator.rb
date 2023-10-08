require_relative 'coffe_decorator'

class SugarCoffeDecorator < CoffeDecorator
  def initialize(coffe, ingredient)
    @ingredient = ingredient
    super(coffe, ingredient)
  end

  def cost
    @decorated_coffee.cost + 100
  end

  def ingredients
    @decorated_coffee.ingredients << @ingredient
  end

  def make
    puts "Adding sugar to the coffe"    
  end
end