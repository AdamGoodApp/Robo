require 'robotic-arm'
require 'io/console'

ra = RoboticArm.new

loop do

	# Get a character from STDIN instantly.
	ch = STDIN.getch

	if ch.include? "D"
	  ra.base.left 0.7
	end

	if ch.include? "C"
	  ra.base.right 0.7
	end

	if ch.include? "B"
	  ra.elbow.down 0.3
	end

	if ch.include? "A"
	  ra.elbow.up 0.3
	end

	# if ch.include? "q"
	#   ra.grip.open 0.3
	# end

	# if ch.include? "w"
	#   ra.grip.close 0.3
	# end


end