# 02 - Start the Engine (Part 1)
class Vehicle
  attr_reader :year

  def initialize(year)
    @year = year
  end
end

class Truck < Vehicle
  def start_engine
    puts 'Ready to go!'
  end

  def initialize(year)
    super
    start_engine
  end
end

truck1 = Truck.new(1994)
puts truck1.year
