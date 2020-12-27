# 03 - Fix the Program - Books (Part 1)
class Book
  attr_reader :author, :title

  def initialize(author, title)
    @author = author
    @title = title
  end

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new("Neil Stephenson", "Snow Crash")
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

# attr_reader creates an getter method
# attr_write creates a setter
# attr_accessor creates both
# we chose attr_reader because our example did not require
#   a setter. att_accessor would have worked as well.
# Explitly creating getter methods would have also worked.
