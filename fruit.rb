require_relative 'product_type'
require_relative 'fruits_factory'

class Fruit
  include ProductType

  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end

  def acid?
    puts "validar para saber si la fruta #{@name} es acida o no"
  end

  def sweet?
    puts "validar para saber si la fruta #{@name} es dulce o no"
  end
end