# Concrete class
require_relative 'product_interface'
require_relative 'fruit'

class FruitsFactory
  include ProductInerface

  def create_fruit(name, description, price)
    puts "create fruit #{name}"
    Fruit.new(@name, @description, @price)
  end
end