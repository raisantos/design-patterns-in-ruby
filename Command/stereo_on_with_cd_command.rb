class StereoOnWithCDCommand
  def initialize(stereo)
    @stereo = stereo
  end

  def execute
    @stereo.on
    @stereo.set_cd('IRE')
    @stereo.set_volume(75)
  end
end