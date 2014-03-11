 
# Problem 92
# ==========


# A number chain is created by continuously adding the square of the digits in a number to form a new number until it has been seen before.

# For example,

# 44 → 32 → 13 → 10 → 1 → 1
# 85 → 89 → 145 → 42 → 20 → 4 → 16 → 37 → 58 → 89

# Therefore any chain that arrives at 1 or 89 will become stuck in an endless loop. What is most amazing is that EVERY starting number will eventually arrive at 1 or 89.

# How many starting numbers below ten million will arrive at 89?
# ===============================================================================

class Integer

	def square_chain
		def separate(num)
			num.to_s.split("").map {|n| n.to_i }
		end

		current_num = self

		loop do
			return current_num if current_num == 1 || current_num == 89
			num_array = separate(current_num)
			current_num = 0
			num_array.map {|n| current_num += n**2}
		end
	end
	
end


def problem
	answer = 0
	counter_1 = Hash.new
	counter_89 = Hash.new
	# debug_counter = 0
	1.upto(10_000_000) do |n|
		if n.square_chain == 89
			answer += 1 
			# if n > debug_counter
			# 	puts "#{n} - #{answer}" 
			# 	debug_counter += 50_000
			# end
		end
	end
	puts "#{answer}"
end

problem

# Idea - add n to hash counter for 1 and 89. if hash_counter[current_num] return 1 or 89