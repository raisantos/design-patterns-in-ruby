class Tuner
  def initialize(description, amplifier)
    @description = description
    @amplifier = amplifier
  end

  def on
    puts "#{@description} on"
  end

  def off
    puts "#{@description} off"
  end

  def set_frequency(frequency)
    puts "#{@description} setting frequency to #{frequency}"
    @frequency = frequency
  end

  def set_am
    puts "#{@description} setting AM mode"
  end

  def set_fm
    puts "#{@description} setting FM mode"
  end

  def to_string
    @description
  end
end