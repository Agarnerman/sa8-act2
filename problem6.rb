module Drivable
    def drive(destination)
      puts "Driving #{self.class} to #{destination}"
    end
  end
  class Car
    include Drivable
    def initialize(color, model)
      @color = color
      @model = model
    end
  end
  class Truck
    include Drivable
    def initialize(capacity)
      @capacity = capacity
    end
  end
  
  car = Car.new("red", "Toyota Camry")
  truck = Truck.new(2000)
  car.drive("the beach")
  truck.drive("the construction site")
  