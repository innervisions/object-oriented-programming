# 10 - Refactoring Vehicles
class Vehicle
  attr_reader :make, :model

  def initialize(make, model)
    @make = make
    @model = model
  end

  def to_s
    "#{make} #{model}"
  end
end

class Car < Vehicle
  def wheels
    4
  end
end

class Motorcycle
  def wheels
    2
  end
end

class Truck
  attr_reader :payload

  def initialize(make, model, payload)
    super(make, model)
    @payload = payload
  end

  def wheels
    6
  end
end

# It could make sense to define a wheels method in Vehicle,
# if all vehicles in our problem domain have wheels. In that case,
# wheels should be a valid method call for any subclass of Vehicle,
# However for the base class we would need a default value, or
# perhaps have it return nil.
