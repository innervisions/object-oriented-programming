# 04 - Reverse Engineering
class Transform
  def initialize(str)
    @text = str
  end

  def uppercase
    @text.upcase
  end

  def self.lowercase(str)
    str.downcase
  end
end

my_data = Transform.new('abc')
puts my_data.uppercase
puts Transform.lowercase('XYZ')

# ABC
# xyz
