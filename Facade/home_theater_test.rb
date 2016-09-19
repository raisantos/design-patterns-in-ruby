require_relative 'home_theater_facade'

class HomeTheaterTest
  amplifier = Amplifier.new('Top Amplifier')
  tuner = Tuner.new('Top Tuner', amplifier)
  dvd = DVDPlayer.new('Top DVDPlayer', amplifier)
  cd = CDPlayer.new('Top CDPlayer', amplifier)
  projector = Projector.new('Top Projector', dvd)
  screen = Screen.new('Cinema Screen')
  lights = Lights.new('Cinema Lights')
  popper = PopcornPopper.new('Popcorn Popper')

  home_theater = HomeTheaterFacade.new(amplifier, tuner, dvd, cd, projector, screen, lights, popper)

  home_theater.watch_movie('Underworld')
  home_theater.end_movie

  home_theater.listen_cd('The Seventh Life Path')
  home_theater.end_cd

  home_theater.listen_radio(94.5)
  home_theater.end_radio
end