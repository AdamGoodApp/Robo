require 'robotic-arm'
require 'pry'
require 'gosu'

class GameWindow < Gosu::Window
	@@ra = RoboticArm.new

	def initialize
    	super 640, 480, false
    	self.caption = "Gosu Tutorial Game"
  	end

	def button_down(id)
 		case id
 			when Gosu::KbLeft
   				@@ra.base.left 0.7
   			when Gosu::KbRight
   				@@ra.base.right 0.7
   			when Gosu::KbUp
   				@@ra.wrist.up 0.3
   			when Gosu::KbDown
   				@@ra.wrist.down 0.3
 		end
	end

	# def button_down(di)
 # 		case di
 # 			when Gosu::KbRight
 #   			@@ra.base.right 0.7
 # 		end
	# end

	# def button_down(id)
 # 		case id
 # 			when Gosu::KbUp
 #   			@@ra.wrist.up 0.3
 # 		end
	# end

	# def button_down(id)
 # 		case id
 # 			when Gosu::KbDown
 #   			@@ra.wrist.down 0.3
 # 		end
	# end

  	def update
  	end

  	def draw
  	end
end

window = GameWindow.new
window.show

