class CaffeineBeverage
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