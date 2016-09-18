require_relative 'stereo_on_with_cd_command'
require_relative 'stereo_off_command'

class Stereo
  def initialize(location)
    @location = location
  end

  def on
    puts "#{@location} stereo is on"
  end

  def off
    puts "#{@location} stereo is off"
  end

  def set_cd(cd)
    puts "#{@location} stereo is set for #{cd} CD"
  end

  def set_volume(volume)
    puts "#{@location} stereo volume set to #{volume} volume"
  end
end