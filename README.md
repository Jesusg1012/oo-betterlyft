# BetterLyft™ 

## Deliverables
You are building an app for a Lyft/Uber competitor. The models that you will use for your application are: Passenger, Driver, and Ride.

## Domain Modeling
  - A Passenger has many rides
  - A Driver has many rides
  - A Ride belongs to a passenger and a driver
  
Always start by drawing out the relationship either on a whiteboard or piece of paper. Think about how each of these models will be connected. From there then begin writing code.

#### Passenger
A Passenger should be initialized with a name as a string.
- `Passenger#rides`
  - Returns an array of Ride instances that this person has been on
- `Passenger#drivers`
  - Returns an array of Driver instances that this person has rode with
- `Passenger#total_distance`
  - Returns the floating number that represents the total distance the passenger has travelled using the service
- `Passenger.all`
  - Returns an array of all Passengers
- `Passenger.premium_members`
  - Returns an array of all Passengers who have travelled over 100 miles in total with the service

#### Ride
A Ride should be initialized with a driver (as a Driver object), a passenger (as a Passenger object), and a distance (as a float i.e. `3.2`). The distance refers to miles.
- `Ride#passenger`
  - Returns the Passenger object for that ride
- `Ride#driver`
  - Returns the Driver object for that ride
- `Ride.average_distance`
  - Returns the average distance across ALL rides
  
#### Driver
A Driver should be initialized with a name as a string.
- `Driver#passengers`
  - Returns an array of all Passengers a driver has had
- `Driver#rides`
  - Returns an array of all Rides a driver has made
- `Driver.all`
  - Returns an array of all Drivers
- `Driver.mileage_cap(distance)`
  - Takes an argument of a distance (float) and returns an array of all Drivers who have driven over the mileage
