# /********************************************************************
# *																	*
# *	Find the difference between the sum of the squares of the 		*
# *   first one hundred natural numbers and the square of the sum.	*
# *																	*
# ********************************************************************/

a = 0
b = 0
(1..100).map.each { |x| a += x*x }
(1..100).map.each { |x| b += x }
b *= b

puts b - a