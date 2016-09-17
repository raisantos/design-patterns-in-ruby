require "singleton"

class ChocolateBoiler
  include Singleton

  def initialize
    @empty = true
    @boiled = false
  end

  def fill
    if(@empty)
      @empty = false
      @boiled = false
      puts "Filled!"
    else
      puts "Filled already!"
    end
  end

  def drain
    if(!@empty && @boiled)
      @empty = true
      puts "Drained!"
    else
      puts "Impossible drain!"
    end
  end

  def boil
    if(!@empty && !@boiled)
      @boiled = true
      puts "Boiled!"
    else
      puts "Impossible boil!"
    end
  end

end

chocolate = ChocolateBoiler.instance
chocolate.fill
#puts chocolate.object_id

chocolate2 = ChocolateBoiler.instance
chocolate2.fill
#puts chocolate2.object_id
