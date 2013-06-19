 
# Problem 35
# ==========


#    The number, 197, is called a circular prime because all rotations of the
#    digits: 197, 971, and 719, are themselves prime.

#    There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37,
#    71, 73, 79, and 97.

#    How many circular primes are there below one million?

# ===============================================================================
timer_start = Time.now

require "mathn"
answer = 0
@@primes = Hash.new
Prime.first(100_000).each {|x| @@primes[x]=1}

def circular?(num)
	@h = Hash.new
	num.permutation.map {|x| @h[x.join]=x.join.to_i}.uniq

	@h.each_value do |x|
		!@@primes.include?(x) ? (return false) : nil
	end
	true
end

100_000.downto(2) do |i|
	if i.prime? then 
		circular?(i.to_s.split("").map(&:to_i)) ? answer += 1 : nil 
	end
end

puts answer

puts"
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"