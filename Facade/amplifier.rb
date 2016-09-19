class Amplifier
  def initialize(description)
    @description = description
  end

  def on
    puts "#{@description} on"
  end

  def off
    puts "#{@description} off"
  end

  def set_stereo_sound
    puts "#{@description} stereo mode on"
  end

  def set_surround_sound
    puts "#{@description} surround mode on"
  end

  def set_volume(level)
    puts "#{@description} setting volume to #{level}"
  end

  def set_tuner(tuner)
    puts "#{@description} setting tuner to #{tuner.to_string}"
    @tuner = tuner
  end

  def set_dvd(dvd)
    puts "#{@description} setting DVD player to #{dvd.to_string}"
    @dvd = dvd
  end

  def set_cd(cd)
    puts "#{@description} setting CD player to #{cd.to_string}"
    @cd = cd
  end

  def to_string
    @description
  end
end