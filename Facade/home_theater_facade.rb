require_relative 'amplifier'
require_relative 'tuner'
require_relative 'dvd_player'
require_relative 'cd_player'
require_relative 'projector'
require_relative 'screen'
require_relative 'lights'
require_relative 'popcorn_popper'

class HomeTheaterFacade
  def initialize(amplifier, tuner, dvd, cd, projector, screen, lights, popper)
    @amplifier = amplifier
    @tuner = tuner
    @dvd = dvd
    @cd = cd
    @projector = projector
    @screen = screen
    @lights = lights
    @popper = popper
  end

  def watch_movie(movie)
    puts 'Get ready to watch a movie!!!'
    @popper.on
    @popper.pop
    @lights.dim(10)
    @screen.down
    @projector.on
    @projector.wide_screen_mode
    @amplifier.on
    @amplifier.set_dvd(@dvd)
    @amplifier.set_surround_sound
    @amplifier.set_volume(75)
    @dvd.on
    @dvd.play(movie)
    puts
  end

  def end_movie
    puts 'Shutting down movie!!!'
    @popper.off
    @lights.on
    @screen.up
    @projector.off
    @amplifier.off
    @dvd.stop
    @dvd.eject
    @dvd.off
    puts
  end

  def listen_cd(title)
    puts 'Get ready to listen a CD!!!'
    @lights.on
    @amplifier.on
    @amplifier.set_cd(@cd)
    @cd.on
    @cd.play(title)
    @amplifier.set_stereo_sound
    @amplifier.set_volume(100)
    puts
  end

  def end_cd
    puts 'Shutting down CD!!!'
    @amplifier.off
    @cd.stop
    @cd.eject
    @cd.off
    puts
  end

  def listen_radio(frequency)
    puts 'Get ready to listen radio!!!'
    @amplifier.on
    @amplifier.set_tuner(@tuner)
    @tuner.on
    @tuner.set_fm
    @tuner.set_frequency(frequency)
    @amplifier.set_volume(60)
    puts
  end

  def end_radio
    puts 'Shutting down radio!!!'
    @tuner.off
    @amplifier.off
    puts
  end
end