# 04 - Fix the Program - Books (Part 2)
class Book
  attr_accessor :title, :author

  def to_s
    %("#{title}", by #{author})
  end
end

book = Book.new
book.author = "Neil Stephenson"
book.title = "Snow Crash"
puts %(The author of "#{book.title}" is #{book.author}.)
puts %(book = #{book}.)

# The author of "Snow Crash" is Neil Stephenson.
# book = "Snow Crash", by Neil Stephenson.

# The best way to implement the Book clase depends on
# the range of use cases. Initializing the book with a title
# and author prevents us from trying to access an "empty"
# book. At the same time, having getter methods can allow
# us to change the state of the book which may or may not
# be useful to us.
