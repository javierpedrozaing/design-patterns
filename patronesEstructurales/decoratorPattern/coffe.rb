# component
module Coffe 
  def cost
    3000
  end

  def ingredients(ingredient = 'agua')
    @ingredients = ["cafe"]
    @ingredients << ingredient
  end

  def make
    raise NotImplementedError "Don't forget implement this method"
  end
end