# 08 - Method Lookup (Part 2)
class Animal
end

class Cat < Animal
end

class Bird < Animal
end

cat1 = Cat.new
cat1.color # Checks Cat, Animal, Object, Kernel, BasicObject
# before throwing error.
