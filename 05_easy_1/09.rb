# 09 - Complete the Program - Cats
class Pet
  def initialize(name, age)
    @name = name
    @age = age
  end
end

class Cat < Pet
  def initialize(name, age, colors)
    super(name, age)
    @colors = colors
  end

  def to_s
    "My cat #{@name} is #{@age} years old and has #{@colors} fur."
  end
end

pudding = Cat.new('Pudding', 7, 'black and white')
butterscotch = Cat.new('Butterscotch', 10, 'tan and white')
puts pudding, butterscotch

# My cat Pudding is 7 years old and has black and white fur.
# My cat Butterscotch is 10 years old and has tan and white fur.

# We could modify our pet class to accept a colors parameter. This
# would allow us to not write an initialize method for our Cat class,
# causing the initialize method for the Pet superclass to be called by default.
# Cat would not be adding any new instance variables.
# This would work, provided we want every pet to have a color description.
