
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
answer = []

class Array
	def circular?
		require "mathn"
		self.permutation.map(&:join).uniq.each do |x|
			!x.to_i.prime? ? (return false) : nil
			x == self.last ? (return true) : nil 
		end
	end
end

200000.downto(2) do |i|
	if i.prime? then 
		(i.to_s.split("").circular? && !answer.include?(i)) ? (answer << i; puts i) : nil 
	end
end

puts " #{answer} 
#{answer.length}"

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"