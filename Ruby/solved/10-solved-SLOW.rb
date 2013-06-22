# /********************************************************************************
# *																				*
# *	Find the sum of all the primes below two million.							*
# *																				*
# ********************************************************************************/

timer_start = Time.now
require "mathn"

puts "The answer is #{Prime.each(ubound = 2000000).inject(:+)}"

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
