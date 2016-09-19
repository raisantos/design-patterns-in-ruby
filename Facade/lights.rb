class Lights
  def initialize(description)
    @description = description
  end

  def on
    puts "#{@description} on"
  end

  def off
    puts "#{@description} off"
  end

  def dim(level)
    puts "#{@description} dimming to #{level} %"
  end

  def to_string
    @description
  end
end