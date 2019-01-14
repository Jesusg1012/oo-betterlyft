require_relative './ride.rb'
require_relative './driver.rb'
require 'pry'
class Passenger
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_reader :name
  def total_distance
    distance = 0
    self.rides.each do |ride|
      distance += ride.distance
    end
    return distance
  end
  def rides
    Ride.all.select do |ride|
      ride.passenger.name == @name
    end
  end
  def drivers
    self.rides.map do |ride|
      ride.driver
    end
  end
  def self.all
    @@all
  end
  def self.premium_members
    Driver.mileage_cap(100).map do |ride|
      ride.passenger
    end
  end

end
