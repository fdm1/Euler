# Problem 30
# ==========


#    Surprisingly there are only three numbers that can be written as the sum
#    of fourth powers of their digits:

#      1634 = 1^4 + 6^4 + 3^4 + 4^4
#      8208 = 8^4 + 2^4 + 0^4 + 8^4
#      9474 = 9^4 + 4^4 + 7^4 + 4^4

#    As 1 = 1^4 is not a sum it is not included.

#    The sum of these numbers is 1634 + 8208 + 9474 = 19316.

#    Find the sum of all the numbers that can be written as the sum of fifth
#    powers of their digits.

# ===============================================================================

timer_start = Time.now

class Integer
	def sum_of_fifths()
		x = 0
		(0...self.to_s.length).each {|i| x += self.to_s[i].to_i ** 5 }
		return true if x == self
	end
end

fifths = []
# tried one more 9, same answer with 10x time to process. assumed it wouldn't be bigger. Not sure how else to ensure upper bound.
(2...999999).each {|i| fifths << i if i.sum_of_fifths }

answer = 0
fifths.each {|i| answer += i }

puts answer
puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"