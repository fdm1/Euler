# /********************************************************************************
# *																				*
# *	Find the sum of all the primes below two million.							*
# *																				*
# ********************************************************************************/

timer_start = Time.now
require "mathn"

answer = 0

Prime.each {|p| answer += p; p >=2_000_000 ? (answer -= p; break) : nil }

puts "The answer is #{answer}"

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
