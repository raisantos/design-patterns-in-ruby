require_relative 'caffeine_beverage'
require_relative 'tea'
require_relative 'coffee'

class Recipe
  tea = Tea.new
  puts 'Tea Recipe:'
  tea.prepare_recipe

  coffee = Coffee.new
  puts "\nCoffee Recipe:"
  coffee.prepare_recipe
end