require 'pi_piper'
require 'robotic-arm'
include PiPiper

ra = RoboticArm.new

PiPiper.watch :pin => 25, :invert => true do |pin|
  ra.base.right 0.7
end

PiPiper.wait
