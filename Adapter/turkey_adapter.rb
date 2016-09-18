#usar Turkeys no lugar de Ducks
#implementa a interface duck(quack, fly)
class TurkeyAdapter
  def initialize(turkey)
    @turkey = turkey
  end

  def quack
    @turkey.gobble
  end

  def fly
    for i in (0..4)
      @turkey.fly
    end
  end
end