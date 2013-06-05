# Problem 32
# ==========


#    The product 7254 is unusual, as the identity, 39 * 186 = 7254, containing
#    multiplicand, multiplier, and product is 1 through 9 pandigital.

#    Find the sum of all products whose multiplicand/multiplier/product
#    identity can be written as a 1 through 9 pandigital.
#    HINT: Some products can be obtained in more than one way so be sure to
#    only include it once in your sum.

# ===============================================================================
timer_start = Time.now

class Array
	def pandigital?
		self.uniq.include?(1 && 2 && 3 && 4 && 5 && 6 && 7 && 8 && 9) 
	end
end

def pandi_prods
	prods = []
	limit = 987654321
	while limit > 1
		limit.downto(1) do |x|
			if limit % x == 0 then
				tester = []
				tester << limit.to_s.scan(/./).map {|e| e.to_i }
				tester << x.to_s.scan(/./).map {|e| e.to_i }	
				tester << (limit / x).to_s.scan(/./).map {|e| e.to_i }	
				tester.flatten.pandigital? ? prods << limit : nil			
			end
		end
		limit -= 1
	end
	return prods
end


answer = 0
pandi_prods.uniq.each {|x| answer += x }

puts answer

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"