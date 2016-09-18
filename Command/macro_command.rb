class MacroCommand
  def initialize(commands)
    @commands = commands
  end

  def execute
    for i in (0..@commands.size-1)
      @commands[i].execute
    end
  end

  def undo
    for i in (0..@commands.size-1)
      @commands[i].undo
    end
  end
end