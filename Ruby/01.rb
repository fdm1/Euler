# /*************************************
# *
# *	Find the sum of all the multiples of 3 or 5 below 1000
# *
# **************************************/

# class Mult_3_5
# 	attr_accessor :max

# 	def initialize(max = 1000)
# 		@max = max
# 	end

# 	def sum
		total = 0
		(1...1000).each do |x|
			if x % 3 == 0 || x % 5 == 0
				total += x
			end
		end
		puts total
# 	end	
# end

# Mult_3_5.max
