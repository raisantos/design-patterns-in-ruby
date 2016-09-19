class CDPlayer
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

  def eject
    @title = 'ejected'
    puts "CD #{@title}"
  end

  def play(title)
    @title = title
    @current_track = 0
    puts "#{@description} playing #{@title}"
  end

  def play_with_track(track)
    if @title == 'ejected'
      puts "#{@description} can't play track #{track}, no cd inserted"
    else
      @current_track = track
      puts "#{@description} playing track #{@curren_track} of #{@title}"
    end
  end

  def stop
    @current_track = 0
    puts "#{@description} stopped #{@title}"
  end

  def pause
    puts "#{@description} paused #{@title}"
  end

  def to_string
    @description
  end
end