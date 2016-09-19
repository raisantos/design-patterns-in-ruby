class Projector
  def initialize(description, dvd_player)
    @description = description
    @dvd_player = dvd_player
  end

  def on
    puts "#{@description} on"
  end

  def off
    puts "#{@description} off"
  end

  def wide_screen_mode
    puts "#{@description} in wide screen mode (16x9 aspect ratio)"
  end

  def tv_mode
    puts "#{@description} in tv mode (4x3 aspect ratio)"
  end

  def to_string
    @description
  end
end