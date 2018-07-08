class Trip
  attr_reader :cost

  def initialize(vehicles)
    @vehicles = vehicles
    @cost = 0
  end

  def add_vehicle(vehicle)
    ...
  end

  def remove_vehicle(vehicle)
    ...
  end

  def calculate_cost
    ...
  end
end

class Vehicle
  attr_reader :name, :cost, :price_per_km

  def initialize(name)
    @name = name
    @cost = 0
  end

  def go(distance)
    @cost += distance * @price_per_km
  end

  def ==(other)
    ...
  end
end

class Car < Vehicle
  def initialize(name, price_per_km)
    super(name)

    @price_per_km = price_per_km
  end
end

class Train < Vehicle
  def initialize(name)
    super
  end

  def go(distance)
    @cost += 3
  end
end

class Bike < Vehicle
  def initialize(name)
    super

    @price_per_km = 0
  end
end

vehicles = [Car.new('Ford', 0.3), Train.new('2'), Bike.new('kolarski')]
trip = Trip.new(vehicles)

vehicles[0].go(100)
vehicles[0].go(15)
vehicles[1].go(4)
vehicles[1].go(6)
vehicles[2].go(30)

trip.calculate_cost
puts trip.cost
puts "*******************"
new_car = Car.new('Fiat', 0.4)
trip.add_vehicle(new_car)
new_car.go(30)
trip.calculate_cost
puts trip.cost
puts "*******************"
