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
		self.sort == ["1","2","3","4","5","6","7","8","9"]
	end
end

def pandi_prods
	prods = []
	limit = 987654321
	1.upto(limit) do |m1|
		puts m1
		m1_array = m1.to_s.split("")
		m1_length = m1_array.length
		m1.upto(limit) do |m2|
			m2_array = m1.to_s.split("")
			m2_length = m2_array.length
			prod = (m1 * m2)
			prod_array = prod.to_s.split("")
			prod_length = prod_array.length
			next if m1_array.any? {|i| m2_array.include?(i) }
			puts m2
			break if m1_length + m2_length + prod_length != 9 
			puts "#{m1} * #{m2} = #{prod}"
			tester = m1_array + m2_array + prod_array
			tester.pandigital? ? prods << limit : nil			
		end
	end

	return prods
end


answer = 0
pandi_prods.uniq.each {|x| answer += x }

puts answer

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"