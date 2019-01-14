require_relative './passenger.rb'
require_relative './driver.rb'
require 'pry'
class Ride
  @@all = []
  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end
  attr_reader :driver, :passenger, :distance
  def self.average_distance
    total = 0
    @@all.each do |drive|
      total += drive.distance
    end
    return total/@@all.length
  end
  def self.all
    @@all
  end

end
