# 07 - Method Lookup (Part 1)
class Animal
  attr_reader :color

  def initialize(color)
    @color = color
  end
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new('Black')
puts cat1.color # Checks Cat, then Animal
p cat1.class.ancestors # [Cat, Animal, Object, Kernel, BasicObject]
