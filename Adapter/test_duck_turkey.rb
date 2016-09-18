require_relative 'mallard_duck'
require_relative 'wild_turkey'
require_relative 'turkey_adapter'
require_relative 'duck_adapter'

def test_duck(duck)
  duck.quack
  duck.fly
end

def test_turkey(turkey)
  turkey.gobble
  turkey.fly
end

class TestDuckTurkey
  duck = MallardDuck.new
  turkey = WildTurkey.new

  duck_adapter = DuckAdapter.new(duck)
  turkey_adapter = TurkeyAdapter.new(turkey)

  puts 'The Duck Adapter says:'
  test_turkey(duck_adapter)

  puts "\nThe Turkey Adapter says:"
  test_duck(turkey_adapter)
end