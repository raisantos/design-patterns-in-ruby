class RemoteControl
  def initialize
    @on_commands = []
    @off_commands = []
  end

  def set_command(slot, on_command, off_command)
    @on_commands[slot] = on_command
    @off_commands[slot] = off_command
  end

  def on_button_was_pushed(slot)
    @on_commands[slot].execute
    @undo_command = @on_commands[slot]
  end

  def off_button_was_pushed(slot)
    @off_commands[slot].execute
    @undo_command = @off_commands[slot]
  end

  def undo_button_was_pushed
    @undo_command.undo
  end

  def to_string
    puts 'Remote Control Slots:'
    for i in (0..@on_commands.size-1)
      puts "[slot #{i}] #{@on_commands[i].class} ------ #{@off_commands[i].class}"
    end
    puts "[undo] #{@undo_command.class}"
  end
end