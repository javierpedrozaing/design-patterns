require_relative 'menu'

class SubMenu < Menu
  attr_reader :has_children

  def initialize(name, parent)    
    @parent = parent
    @parent.add_item(name)
    super(name)
  end

  def add_item(*items)
    super
  end

  def update_item(*items)
    puts "updating item"
  end

  def delete_item(*items)
    puts "deleting item"
  end  

  def create
    puts "Sub menu #{@name} created"
  end

  def update
    puts "Sub menu #{@name} updated"
  end

  def delete
    puts "Sub menu #{@name} deleted"
  end

  def show_menu
    puts "SUB MENU #{name.upcase}"
    puts @items
  end
end