require 'pi_piper'
require 'robotic-arm'
include PiPiper

# ra = RoboticArm.new

watch :pin => 25 do
  if value == 0 || value == 1
  	puts "i shouldnt be moving"
  elsif value != 0 && value != 1
  	puts "turn left!"
  end
end

PiPiper.wait
