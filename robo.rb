require 'pi_piper'
require 'robotic-arm'
require 'pry'
include PiPiper

ra = RoboticArm.new

left = 2
right = 3

watch :pin => left do
  puts "Pin changed from #{last_value} to #{value}"
  if value == 0
  	ra.base.left 10
  else
  	ra.stop
  end
end

watch :pin => right do
  puts "Pin changed from #{last_value} to #{value}"
  if value == 0
  	ra.base.right 10
  else
  	ra.stop
  end
end

#Or

# after :pin => 25, :goes => :low do
#   puts "Button pressed"
# end

PiPiper.wait

# while 1 > 0
# 	case a 
# 		when "\e[D"
# 			puts "left"
# 		when "\e[C"
# 			puts "right"
# 		when "\e[B"
# 			puts "down"
# 		when "\e[A"
# 			puts "up"
# 	end
# end

# ra.shoulder.up 0.5
# ra.base.right 0.7
