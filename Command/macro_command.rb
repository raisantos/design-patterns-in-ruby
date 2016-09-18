class MacroCommand
  def initialize(commands)
    @commands = commands
  end

  def execute
    for i in (0..@commands.size-1)
      @commands[i].execute
    end
  end
end