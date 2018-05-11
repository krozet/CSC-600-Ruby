# CSc 600: Homework 5
# Ruby
#
# Keawa Rozet
# Homework 5: Question #1

#while
counter = 2
while counter > 0
  puts "while loop: #{counter}"
  counter -= 1
end
puts

#until
counter = 4
until counter == 0
  print "until loop: #{counter}\n"
  counter /= 2
end
puts

#for
for i in 0..2
  puts "for loop: #{i}"
end
puts

#upto
1.upto(3) {|x| puts "upto iterator: #{x}"}
puts

#downto
3.downto(1) do |y|
  puts "downto iterator: #{y}"
end
puts

#times
numOfTimes = 2
numOfTimes.times {puts "times iterator: #{numOfTimes}"}
puts

#each
food = {1 => "apples", 2 => "bananas", 3 => "pears"}
food.each {|fruit| puts "each iterator: #{fruit}"}
puts

#map
sum = 0
(1..5).map do |x|
  sum += x
end
puts "map iterator: #{sum}\n"
puts

#step
(0).step(1, 0.5) do |x|
  puts "step iterator: #{x}"
end
puts

#collect
arr = [1,2,3,4].collect {|x| x*2}
puts "collect iterator: #{arr}\n"
puts

#select
evenNums = (1..10).select {|x| x%2 == 0}
puts "select iterator: #{evenNums}"
puts

#reject
oddNums = (1..10).reject {|x| x%2 == 0}
puts "reject iterator: #{oddNums}"
