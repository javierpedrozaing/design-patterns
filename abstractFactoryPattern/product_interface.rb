# abstract product interface
module ProductInerface
  attr_accessor :name, :description, :price # setters and getters

  def create_fruit
    raise NotImplementedError, "#{self.class} does not implement create_fruit"
  end

  def create_vegetable
    raise NotImplementedError, "#{self.class} does not implement create_vegetable"
  end
end