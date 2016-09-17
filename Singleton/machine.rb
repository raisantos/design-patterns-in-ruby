require_relative 'chocolate_boiler'

class Machine
  boiler1 = ChocolateBoiler.instance
  boiler2 = ChocolateBoiler.instance

  print 'ID boiler1 = ', boiler1.object_id, "\n"
  print 'ID boiler2 = ', boiler2.object_id, "\n\n"

  boiler1.fill
  boiler2.fill

  boiler2.boil
  boiler1.boil

end