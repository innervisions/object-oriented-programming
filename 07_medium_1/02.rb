# 02 - Fixed Array
class FixedArray
  attr_reader :size

  def initialize(size)
    @size = size
    @array = [nil] * size
  end

  def [](index)
    raise IndexError unless (0..(size - 1)).include?(index) ||
                            (-size..-1).include?(index)
    @array[index]
  end

  def []=(index, value)
    raise IndexError unless (0..(size - 1)).include?(index) ||
                            (-size..-1).include?(index)
    @array[index] = value
  end

  def to_a
    @array.dup
  end

  def to_s
    @array.to_s
  end
end

fixed_array = FixedArray.new(5)
puts fixed_array[3].nil?
puts fixed_array.to_a == [nil] * 5

fixed_array[3] = 'a'
puts fixed_array[3] == 'a'
puts fixed_array.to_a == [nil, nil, nil, 'a', nil]

fixed_array[1] = 'b'
puts fixed_array[1] == 'b'
puts fixed_array.to_a == [nil, 'b', nil, 'a', nil]

fixed_array[1] = 'c'
puts fixed_array[1] == 'c'
puts fixed_array.to_a == [nil, 'c', nil, 'a', nil]

fixed_array[4] = 'd'
puts fixed_array[4] == 'd'
puts fixed_array.to_a == [nil, 'c', nil, 'a', 'd']
puts fixed_array.to_s == '[nil, "c", nil, "a", "d"]'

puts fixed_array[-1] == 'd'
puts fixed_array[-4] == 'c'

begin
  fixed_array[6]
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[-7] = 3
  puts false
rescue IndexError
  puts true
end

begin
  fixed_array[7] = 3
  puts false
rescue IndexError
  puts true
end
