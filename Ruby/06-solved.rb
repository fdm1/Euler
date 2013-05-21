# /********************************************************************
# *																	*
# *	Find the difference between the sum of the squares of the 		*
# *   first one hundred natural numbers and the square of the sum.	*
# *																	*
# ********************************************************************/
timer_start = Time.now
a = 0
b = 0
(1..100).map.each { |x| a += x*x }
(1..100).map.each { |x| b += x }
b *= b

puts b - a
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
