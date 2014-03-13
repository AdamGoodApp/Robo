require 'pi_piper'
require 'robotic-arm'
require 'pry'
include PiPiper

ra = RoboticArm.new

left = 2
right = 3
up = 10
down = 4

watch :pin => left do
  if value == 0
  	ra.base.left 0.7
  end
end

watch :pin => right do
  puts "Pin changed from #{last_value} to #{value}"
  if value == 0
  	ra.base.right 0.7
  end
end

# watch :pin => up do
#   puts "Pin changed from #{last_value} to #{value}"
#   if value == 0
#   	ra.wrist.up 0.3
#   end
# end

watch :pin => down do
  puts "Pin changed from #{last_value} to #{value}"
  if value == 0
  	ra.wrist.down 0.3
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
