

# /*************************************
# *
# *	find the sum of the evem terms in the 
# *	Fibonacci sequence whose values do not exceed four million
# *
# **************************************/

class EvenFib
	require 'pry'

	attr_accessor :num_a, :num_b, :num_c, :sum

	def initialize(num_a = 0, num_b = 1, sum = 0)
		@num_a = num_a
		@num_b = num_b
		@num_c = @num_a + @num_b
		@sum = sum
	end

	# binding.pry
	
	def next_num
		@num_a = @num_b
		@num_b = @num_c
		@num_c = @num_a + @num_b
	end

	def is_even?(x)
		true if x % 2 == 0
	end

	def sum
		while @num_c < 4_000_000

			if is_even?(@num_c) 
				@sum += @num_c 
			end
			next_num
		end
		puts "#{@sum}"
	end
end

x = EvenFib.new
x.sum