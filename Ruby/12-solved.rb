# /********************************************************************************
# *																				*
# The sequence of triangle numbers is generated by adding the natural numbers. 
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. 

# The first ten terms would be:

# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...

# Let us list the factors of the first seven triangle numbers:

#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.

# What is the value of the first triangle number to have over five hundred divisors?
# *
# *																				*
# ********************************************************************************/
require 'prime'
tester = 1
goal = 500
current_divisors = 0

def triangle(n)
	t = 0
	(1..n).each {|i| t += i }
	return t
end

class Integer
  def factors()
    1.upto(Math.sqrt(self)).select {|i| (self % i).zero?}.inject([]) do |f, i| 
      f << i
      f << self/i unless i == self/i
      f
    end.sort
  end
end

while current_divisors <= goal
	current_divisors = triangle(tester).factors.length
	break if current_divisors >= goal
	tester += 1
end

puts "The answer is #{triangle(tester)}"
