require_relative 'remote_control'
require_relative 'light'
require_relative 'stereo'

class RemoteLoader
  remote_control = RemoteControl.new

  living_room_light = Light.new('Living Room')
  living_room_light_on = LightOnCommand.new(living_room_light)
  living_room_light_off = LightOffCommand.new(living_room_light)

  kitchen_light = Light.new('Kitchen')
  kitchen_light_on = LightOnCommand.new(kitchen_light)
  kitchen_light_off = LightOffCommand.new(kitchen_light)

  philips_stereo = Stereo.new('Philips')
  philips_stereo_on = StereoOnWithCDCommand.new(philips_stereo)
  philips_stereo_off = StereoOffCommand.new(philips_stereo)

  remote_control.set_command(0, living_room_light_on, living_room_light_off)
  remote_control.set_command(1, kitchen_light_on, kitchen_light_off)
  remote_control.set_command(2, philips_stereo_on, philips_stereo_off)

  remote_control.to_string
  print "\n"

  puts 'Living Room:'
  remote_control.on_button_was_pushed(0)
  remote_control.off_button_was_pushed(0)

  puts "\nKitchen:"
  remote_control.on_button_was_pushed(1)
  remote_control.undo_button_was_pushed

  puts "\nStereo:"
  remote_control.on_button_was_pushed(2)
  remote_control.undo_button_was_pushed
end