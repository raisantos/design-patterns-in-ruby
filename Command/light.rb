require_relative 'light_on_command'
require_relative 'light_off_command'

class Light
  def initialize(location)
    @location = location
  end

  def on
    puts "#{@location} light is on"
  end

  def off
    puts "#{@location} light is off"
  end
end