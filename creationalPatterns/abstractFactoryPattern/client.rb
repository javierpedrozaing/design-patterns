
require_relative 'fruits_factory'

fruit = FruitsFactory.new.create_fruit("manzana", "fruta rica", 5000)

fruit.acid?