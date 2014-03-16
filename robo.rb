require 'pi_piper'
require 'robotic-arm'
include PiPiper

# ra = RoboticArm.new

pin = PiPiper::Pin.new(:pin => 25, :direction => :in)

loop do

case pin
when pin.on
	puts "its on!"
else
	puts "its off"
end


end

PiPiper.wait
