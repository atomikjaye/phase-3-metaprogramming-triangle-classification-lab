class Triangle
  attr_reader :side1, :side2, :side2
  # write code here
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    is_valid_triangle
    if @side1 == @side2 && @side2 == @side3
      :equilateral
    elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
      :isosceles
    # elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side2
    else
      :scalene
      # raise TriangleError
    end
  end

  def is_valid_triangle
    # make sure all @sides do not equal 0
    is_valid = (@side1 > 0 && @side2 > 0 && @side3 > 0) && 
    ((@side1 + @side2 > @side3) && (@side2 + @side3 > @side1) && (@side3 + @side1 > @side2) ) 
    # makse sure two @sides added > third side
    raise TriangleError unless is_valid
  end 



  class TriangleError < StandardError
  end
end
