# CSc 600: Homework 5
# Ruby
#
# Keawa Rozet
# Homework 5: Question #3

class Triangle
  def initialize(x,y,z)
    @sideA = x
    @sideB = y
    @sideC = z
  end

  #mutators
  def sideA=(x)
    @sideA = x
  end
  def sideB=(y)
    @sideB = y
  end
  def sideC=(z)
    @sideC = z
  end

  #accessors
  def sideA
    @sideA
  end
  def sideB
    @sideB
  end
  def sideC
    @sideC
  end

  #returns type of triangle
  def test
    type = 5
    #equilateral
    if (@sideA == @sideB) and (@sideA == @sideC)
      then type = 1
    #isosceles
    elsif (@sideA == @sideB) or (@sideA == @sideC) or (@sideB == @sideC)
      then type = 2
    #right
    elsif (@sideA**2 == (@sideB**2+@sideC**2)) or (@sideB**2 == (@sideA**2+@sideC**2)) or (@sideC**2 == (@sideA**2+@sideB**2))
      then type = 4
    #not a triangle
    elsif (@sideA >= (@sideB+@sideC)) or (@sideB >= (@sideA+@sideC)) or (@sideC >= (@sideB+@sideA))
      then type = 5
    #scalene
    else
      type = 3
    end
    return type
  end

  def perimeter
    if self.test < 5
      return @sideA+@sideB+@sideC
    else
      put "This is not a triangle."
    end
    return
  end

  def area
    if self.test < 5
      perim = self.perimeter/2
      return Math::sqrt(perim * (perim-@sideA) * (perim-@sideB) * (perim-@sideC))
    else
      put "This is not a triangle."
    end
    return
  end
end

#tells the type of triangle
def typeTest(type)
  case type
  when 1
    puts "This is an equilateral triangle."
  when 2
    puts "This is an isosceles triangle."
  when 3
    puts "This is a scalene triangle."
  when 4
    puts "This is a right triangle."
  when 5
    puts "This is not a triangle."
  end
end

#tests
tri = Triangle.new(9,12,15)
typeTest(tri.test)
puts "Side A = #{tri.sideA}, Side B = #{tri.sideB}, Side C = #{tri.sideC}, Perimeter: #{tri.perimeter}, Area: #{tri.area}\n"
tri.sideC = 6
typeTest(tri.test)
puts "Side A = #{tri.sideA}, Side B = #{tri.sideB}, Side C = #{tri.sideC}, Perimeter: #{tri.perimeter}, Area: #{tri.area}\n"
tri.sideB = 9
typeTest(tri.test)
puts "Side A = #{tri.sideA}, Side B = #{tri.sideB}, Side C = #{tri.sideC}, Perimeter: #{tri.perimeter}, Area: #{tri.area}\n"
tri.sideC = 9
typeTest(tri.test)
puts "Side A = #{tri.sideA}, Side B = #{tri.sideB}, Side C = #{tri.sideC}, Perimeter: #{tri.perimeter}, Area: #{tri.area}\n"
tri.sideA = 10
typeTest(tri.test)
puts "Side A = #{tri.sideA}, Side B = #{tri.sideB}, Side C = #{tri.sideC}, Perimeter: #{tri.perimeter}, Area: #{tri.area}\n"
