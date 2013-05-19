# /********************************************************************
# *																	*
# *	Find the 10,001st prime number									*
# *																	*
# ********************************************************************/

primes = [1,2,3]
i = 5

while primes.length <= 10_001
	(1...primes.length).each {|p| 
		(i % primes[p] != 0 && p == primes.length - 1) ? primes << i : nil
		break if i % primes[p] == 0 
	}
	i += 2
end

puts "The answer is #{primes.last}"
