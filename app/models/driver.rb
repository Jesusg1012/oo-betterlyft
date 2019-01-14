require_relative './passenger.rb'
require_relative './ride.rb'
require 'pry'
class Driver
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end
  attr_reader :name
  def self.all
    @@all
  end

  def passenger_names
    self.rides.map do |ride|
      ride.passenger.name
    end
  end

  def rides
    Ride.all.select do |ride|
      ride.driver.name == @name
    end
  end

  def self.mileage_cap(distance)
    Ride.all.select do |ride|
      ride.distance >= distance
    end
  end

  end
