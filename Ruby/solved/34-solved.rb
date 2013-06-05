# Problem 34
# ==========


#    145 is a curious number, as 1! + 4! + 5! = 1 + 24 + 120 = 145.

#    Find the sum of all numbers which are equal to the sum of the factorial of
#    their digits.

#    Note: as 1! = 1 and 2! = 2 are not sums they are not included.

   
# ===============================================================================
timer_start = Time.now

class Integer
	def factorial
		factorial = 1
		i = self
		while i > 1
			factorial *= i
			i -= 1
		end
		return factorial
	end

	def i_to_a
		self.to_s.scan(/./).map {|e| e.to_i }
	end

	def equals_factorials?
		sum = 0
		self.i_to_a.each {|d| sum += d.factorial }
		sum == self
	end
end

start = 999999
sums = []
start.downto(3) do |i|
	i.equals_factorials? ? sums << i : nil
end

answer = 0
sums.each {|x| answer += x}
puts answer

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"