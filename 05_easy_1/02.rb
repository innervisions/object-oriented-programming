# 02 - What's the Output
class Pet
  attr_reader :name

  def initialize(name)
    @name = name.to_s
  end

  def to_s
    "My name is #{@name.upcase}."
  end
end

name = 'Fluffy'
fluffy = Pet.new(name)
puts fluffy.name
puts fluffy
puts fluffy.name
puts name

# will output...
# Fluffy
# My name is FLUFFY.
# FLUFFY
# FLUFFY

# FE - What would happen in this case?
# name = 42
# fluffy = Pet.new(name)
# name += 1
# puts fluffy.name   42
# puts fluffy        My name is 42.
# puts fluffy.name   42
# puts name          43
