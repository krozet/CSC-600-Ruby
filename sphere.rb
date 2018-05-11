# CSc 600: Homework 5
# Ruby
#
# Keawa Rozet
# Homework 5: Question #4

class Sphere
  def initialize(radius)
    @radius = radius
  end

  #accessor
  def radius
    @radius
  end

  def area
    return Math::PI * 4 * @radius**2
  end

  def volume
    return Math::PI * 4/3 * @radius**3
  end
end

class Ball < Sphere
  def initialize(radius,color)
    super(radius)
    @color = color
  end

  #accessor
  def color
    @color
  end
end

class MyBall < Ball
  def initialize(radius,color,owner)
    super(radius,color)
    @owner = owner
  end

  #accessor
  def owner
    @owner
  end

  def show
    puts "radius: #{@radius}, color: #{@color}, owner: #{@owner}"
  end
end

#test
myb = MyBall.new(4,"red","Keawa")
myb.show
puts "area: #{myb.area}, volume: #{myb.volume}"
