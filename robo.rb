require 'pi_piper'
require 'robotic-arm'
include PiPiper

# ra = RoboticArm.new

after :pin => 25, :goes => :high do
  puts "Button pressed"
end

PiPiper.wait
