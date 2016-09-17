require 'singleton'

class ChocolateBoiler
  include Singleton

  def initialize
    @empty = true
    @boiled = false
  end

  def fill
    if @empty
      @empty = false
      @boiled = false
      puts 'Filled!'
    else
      puts 'Filled already!'
    end
  end

  def drain
    if !@empty && @boiled
      @empty = true
      puts 'Drained!'
    else
      puts 'Drain already!'
    end
  end

  def boil
    if !@empty && !@boiled
      @boiled = true
      puts 'Boiled!'
    else
      puts 'Boiled already!'
    end
  end
end