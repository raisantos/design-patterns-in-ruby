class DuckAdapter
  def initialize(duck)
    @duck = duck
  end

  def gobble
    @duck.quack
  end

  def fly
    @duck.fly
  end
end