# Concrete class
class VegetablesFactory < ProductInerface
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end

  def create_vegetable
    Vegetable.new(@name, @description, @price)
  end
end