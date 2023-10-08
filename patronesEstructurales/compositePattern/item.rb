require_relative 'menu'

class Item < Menu  
  
  def initialize(name)
    super(name)
  end

  def create
    puts "Item #{name} created"
  end

  def update
    puts "Item #{name} updated"
  end

  def delete
    puts "Item #{name} deleted"
  end
end