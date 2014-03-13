require 'wiringpi'

# initialize the GPIO port:
gpio = WiringPi::GPIO.new
# name the pins, for easier reference:
left = 25

# initialize the pin functions:
gpio.mode left, INPUT

# loop on all the pins, when the button pin has 
# 0 value (button is pressed) the led will turn
# on.
loop do
  state = gpio.readAll
  if state[left] == 1
    puts "yay left"
  end    
  sleep 0.3
end