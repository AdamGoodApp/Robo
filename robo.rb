require 'pi_piper'
require 'robotic-arm'
include PiPiper

# ra = RoboticArm.new

if :pin => 25, :goes => :low
  puts "Button pressed"
 else
 	puts "turn right!"
end

PiPiper.wait
