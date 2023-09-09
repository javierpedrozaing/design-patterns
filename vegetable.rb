class Vegetable < ProductType
  def initialize(name, description, price)
    @name = name
    @description = description
    @price = price
  end

  def acit?
    puts "creating acid vegetable #{name}"
  end

  def sweet?
    puts "creating acid vegetable #{name}"
  end
end