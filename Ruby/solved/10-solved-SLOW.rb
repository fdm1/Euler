# /********************************************************************************
# *																				*
# *	Find the sum of all the primes below two million.							*
# *																				*
# ********************************************************************************/

timer_start = Time.now
require "mathn"

answer = 0

Prime.map do |p| 
	break if p >= 2_000_000
	answer += p 
end

puts "The answer is #{answer}"

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
