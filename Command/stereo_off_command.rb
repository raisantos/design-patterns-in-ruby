class StereoOffCommand
  def initialize(stereo)
    @stereo = stereo
  end

  def execute
    @stereo.off
  end

  def undo
    @stereo.on
    @stereo.set_cd('IRE')
    @stereo.set_volume(75)
  end
end