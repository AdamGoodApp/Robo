require 'pi_piper'
require 'robotic-arm'
require 'pry'
include PiPiper

ra = RoboticArm.new

watch :pin => 25 do
  if value == 0
  	ra.base.left 0.7
  end
end

PiPiper.wait
