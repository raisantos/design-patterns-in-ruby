class Screen
  def initialize(description)
    @description = description
  end

  def up
    puts "#{@description} going up"
  end

  def down
    puts "#{@description} going down"
  end

  def to_string
    @description
  end
end