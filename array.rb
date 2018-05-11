# CSc 600: Homework 5
# Ruby
#
# Keawa Rozet
# Homework 5: Question #2

class Array
    def limited?(amin, amax)
      self.each do |x|
        unless amin <= x and x <= amax
          return false
        end
      end
      return true
    end

    def sorted?
      if self.length > 1
        if self[0] >= self[1]
          #decreasing array
          if self.length > 2
            (2..self.length-1).each do |i|
              #array is not sorted
              unless self[i-1] >= self[i]
                return 0
              end
            end
          end
          return +1
        else
          #increasing array
          if self.length > 2
            (2..self.length-1).each do |i|
              #array is not sorted
              unless self[i-1] <= self[i]
                return 0
              end
            end
          end
          return -1
        end
      end
    end
end

#test if incr or decr 
def atest(value)
  case value
  when -1
    puts "#{value} = decreasing"
  when 0
    puts "#{value} = not sorted"
  when +1
    puts "#{value} = increasing"
  else
    puts "Not an array"
  end
end

#Examples
nums = [15,3,9,3,6,2,0,1]
puts "nums: #{nums}"
print "limited? to 1-15: "
puts nums.limited?(1, 15)
print "limited? to 0-15: "
puts nums.limited?(0, 15)

#not sorted
print "sorted?: #{nums}: "
atest(nums.sorted?)

#decreasing
nums = nums.sort
print "sorted?: #{nums}: "
atest(nums.sorted?)

#increasing
nums = nums.reverse
print "sorted?: #{nums}: "
atest(nums.sorted?)
