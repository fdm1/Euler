# /********************************************************************
# *																	*
# *	Find the 10,001st prime number									*
# *																	*
# ********************************************************************/
timer_start = Time.now
# primes = [1,2,3]
# i = 5

# while primes.length <= 10_001
# 	(1...primes.length).each {|p| 
# 		(i % primes[p] != 0 && p == primes.length - 1) ? primes << i : nil
# 		break if i % primes[p] == 0 
# 	}
# 	i += 2
# end

require 'mathn'

puts "The answer is #{Prime.first(10001).last}"

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
