class DVDPlayer
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
    @movie = 'ejected'
    puts "DVD #{@movie}"
  end

  def play(movie)
    @movie = movie
    @current_track = 0
    puts "#{@description} playing #{@movie}"
  end

  def play_with_track(track)
    if @movie == 'ejected'
      puts "#{@description} can't play track #{track}, no dvd inserted"
    else
      @current_track = track
      puts "#{@description} playing track #{@curren_track} of #{@movie}"
    end
  end

  def stop
    @current_track = 0
    puts "#{@description} stopped #{@movie}"
  end

  def pause
    puts "#{@description} paused #{@movie}"
  end

  def set_two_channel_audio
    puts "#{@description} set two channel audio"
  end

  def set_surround_audio
    puts "#{@description} set surround audio"
  end

  def to_string
    @description
  end
end