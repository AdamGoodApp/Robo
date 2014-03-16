require 'pi_piper'
require 'robotic-arm'
include PiPiper

ra = RoboticArm.new

watch :pin => 25 do
  if value != 0 && value != 1
  	ra.base.left 0.7
  end
end

PiPiper.wait
