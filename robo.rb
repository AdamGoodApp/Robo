require 'pi_piper'
require 'robotic-arm'
include PiPiper

ra = RoboticArm.new

pin = PiPiper::Pin.new(:pin => 25, :direction => :in)

if pin == pin.on 
	puts "its on!"
else
	puts "its off"
end

PiPiper.wait
