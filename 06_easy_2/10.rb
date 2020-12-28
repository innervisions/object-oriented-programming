# 10 - Nobility
module Walkable
  def walk
    "#{self} #{gait} forward"
  end
end

class Animal
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def to_s
    name
  end
end

class Person < Animal
  include Walkable

  private

  def gait
    "strolls"
  end
end

class Cat < Animal
  include Walkable

  private

  def gait
    "saunters"
  end
end

class Cheetah < Cat
  attr_reader :name

  private

  def gait
    "runs"
  end
end

class Noble < Person
  attr_reader :title

  def initialize(name, title)
    super(name)
    @title = title
  end

  def to_s
    "#{title} #{name}"
  end

  private

  def gait
    "struts"
  end
end

byron = Noble.new("Byron", "Lord")
p byron.walk
# => "Lord Byron struts forward"
