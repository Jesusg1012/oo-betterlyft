require_relative '../config/environment.rb'
require_relative '../app/models/driver.rb'
require_relative '../app/models/ride.rb'
require_relative '../app/models/passenger.rb'

def reload
  load 'config/environment.rb'
end


# Put your variables here~!
john = Driver.new("John")
timmy = Passenger.new("Timmy")
drive1 = Ride.new(john, timmy, 100)
bob = Driver.new("Bob")
tom = Passenger.new("Tom")
drive2 = Ride.new(bob, tom, 40)
drive3 = Ride.new(bob, tom, 67)
drive4 = Ride.new(john, tom, 54)
drive5 = Ride.new(bob, timmy, 42)


binding.pry
