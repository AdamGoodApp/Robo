require 'pi_piper'
require 'robotic-arm'
require 'pry'
include PiPiper

ra = RoboticArm.new

puts "hello"

watch :pin => 25 do
  puts "Pin changed from #{last_value} to #{value}"
  # if value == 1
  # 	ra.base.right 0.7
  # end
end

#Or

# after :pin => 23, :goes => :high do
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
