require_relative 'menu'
require_relative 'sub_menu'
require_relative 'item'

main_menu = Menu.new('main menu')
main_menu.add_item('home', 'about') ## adding several
main_menu.add_item('contact') # adding ony one
main_menu.create

sub_menu = SubMenu.new('services', main_menu)
sub_menu.add_item('software development')
sub_menu.create

parent_item = Item.new('new parent item')
parent_item.create

sub_item = Item.new('new sub item')
sub_item.create

main_menu.add_item(parent_item)
main_menu.update

sub_menu.add_item(sub_item)
sub_menu.update

puts main_menu.show_menu
puts sub_menu.show_menu









