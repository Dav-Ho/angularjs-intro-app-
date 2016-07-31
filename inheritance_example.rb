class Vehicle
  def initialize
    @speed = 0
    @direction = 'north'
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Vehicle
  attr_reader :fuel, :model, :color

  def initialize(input)
    super(input)
    @fuel = input[:fuel]
    @model = input[:model]
    @color = input[:color]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end

class Bike < Vehicle
  attr_reader :condition, :type, :weight
  def initialize(input)
    super(input)
    @condition = input[:condition]
    @type = input[:type]
    @weight = input[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

  car = Car.new(fuel: "regular", model: "toyota", color: "red")
  bike = Bike.new(condition: "great", type: "rare", weight: 50)
  puts "The bike accelerated at the speed of #{bike.accelerate} miles per hour and it went #{bike.ring_bell}"
  puts "The toyota is going #{car.accelerate} per hour and it went #{car.honk_horn}"
end
