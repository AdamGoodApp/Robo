require 'pi_piper'
require 'robotic-arm'
include PiPiper

ra = RoboticArm.new

PiPiper.watch :pin => 17, :invert => true do |pin|
  puts "Pin changed from #{pin.last_value} to #{pin.value}"
end

PiPiper.wait
