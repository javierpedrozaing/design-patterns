# concrete component

require_relative 'coffe'

class NormalCoffe
  include Coffe

  def cost
    super
  end

  def make
    puts "making a normal coffe"
  end
end