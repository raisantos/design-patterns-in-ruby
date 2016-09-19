class PopcornPopper
  def initialize(description)
    @description = description
  end

  def on
    puts "#{@description} on"
  end

  def off
    puts "#{@description} off"
  end

  def pop
    puts "#{@description} popping popcorn!"
  end

  def to_string
    @description
  end
end