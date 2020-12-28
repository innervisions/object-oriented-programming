# 08 - Fix the Program - Expander
class Expander
  def initialize(string)
    @string = string
  end

  def to_s
    expand(3)
    # removed self, can not call private method with
    #   an explicit target
  end

  private

  def expand(n)
    @string * n
  end
end

expander = Expander.new('xyz')
puts expander
