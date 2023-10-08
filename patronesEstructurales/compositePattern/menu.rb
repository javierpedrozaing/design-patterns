class Menu
  attr_reader :name

  def initialize(name)
    @name = name
    @items = []
  end

  def add_item(*items)
    @items << items
  end

  def update_item(*items)
    raise NotImplementedError, 'Este método debe ser implementado'
  end

  def delete_item(*items)
    raise NotImplementedError, 'Este método debe ser implementado'
  end

  def create
    puts "Menu #{@name} created"
  end

  def update
    puts "Menu #{@name} Updated"    
  end

  def delete
    puts "Menu #{@name} Deleted"
  end

  def show_menu
    puts "MENU #{name.upcase}"
    puts @items
  end
end
