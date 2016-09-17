class CaffeineBeverage
  #o metodo prepareRecipe precisa ser Final para impedir que as subclasses mudem a receita
  def prepare_recipe
    boil_water
    brew
    pour_in_cup
    add_condiments
  end

  def boil_water
    puts "Boiling water"
  end

  def pour_in_cup
    puts "Pouring into cup"
  end
end

class Tea < CaffeineBeverage
  def brew
    puts "Steeping the tea"
  end

  def add_condiments
    puts "Adding lemon"
  end
end

class Coffee < CaffeineBeverage
  def brew
    puts "Dripping coffee through filter"
  end

  def add_condiments
    puts "Adding sugar and milk"
  end
end

tea = Tea.new
puts "Tea Recipe:"
tea.prepare_recipe

coffee = Coffee.new
puts "\nCoffee Recipe:"
coffee.prepare_recipe
