require_relative 'normal_coffe'
require_relative 'milk_coffe_decorator'
require_relative 'sugar_coffe_decorator'


coffe = NormalCoffe.new
coffe.make

with_milk = MilkCoffeDecorator.new(coffe, 'milk')
with_milk.make

with_sugar = SugarCoffeDecorator.new(with_milk, 'sugar')
with_sugar.make

puts "I make a coffe with #{with_sugar.ingredients}"

puts "total cost #{with_sugar.cost}"