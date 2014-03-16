require 'pi_piper'
require 'robotic-arm'
include PiPiper

# ra = RoboticArm.new

pin = PiPiper::Pin.new(:pin => 25, :direction => :in)

loop do
	puts pin
end

PiPiper.wait
