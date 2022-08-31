class Triangle
  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    one = @one
    two = @two
    three = @three

    if one > 0 && two > 0 && three > 0 && one + two > three && two + three > one && one + three > two
      if one == two && two == three
        :equilateral
      elsif one == two || two == three || one == three
        :isosceles
      else :scalene
      end
    else raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end
