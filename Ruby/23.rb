# Problem 23
# ==========


#    A perfect number is a number for which the sum of its proper divisors is
#    exactly equal to the number. For example, the sum of the proper divisors
#    of 28 would be 1 + 2 + 4 + 7 + 14 = 28, which means that 28 is a perfect
#    number.

#    A number whose proper divisors are less than the number is called
#    deficient and a number whose proper divisors exceed the number is called
#    abundant.

#    As 12 is the smallest abundant number, 1 + 2 + 3 + 4 + 6 = 16, the
#    smallest number that can be written as the sum of two abundant numbers is
#    24. By mathematical analysis, it can be shown that all integers greater
#    than 28123 can be written as the sum of two abundant numbers. However,
#    this upper limit cannot be reduced any further by analysis even though it
#    is known that the greatest number that cannot be expressed as the sum of
#    two abundant numbers is less than this limit.

#    Find the sum of all the positive integers which cannot be written as the
#    sum of two abundant numbers.
# ===============================================================================

timer_start = Time.now

# Perfect number tester. If perfect, return 0, deficient, return -1, abundant, return 1
class Integer
	def perfect?
		  sum = 0
		  (self/2).downto(1) { |x| self % x == 0 ? sum += x : nil }
		  sum == self ? 0 : ( sum > self ? 1 : -1 )
	end
end

i = 1
abundants = []
non_abundants = []
sum_of_abundants = []

while i < (28123 / 2)
	i.perfect? == 1 ? abundants << i : nil
	i += 1
end

abundants.each {|n| sum_of_abundants << (n * 2) }

i = 1
while i < 28123
	if !sum_of_abundants.include?(i)
		puts i
		for n in 0...abundants.length
			break if abundants.include?(abundants[n] && (i - abundants[n]))
			if n >= (i/2)
				non_abundants << i 
			end
			break if n >= (i/2)
		end
	end
	i += 1
end
answer = 0
non_abundants.each {|n| answer += n}
puts non_abundants
puts non_abundants.length

puts "answer = #{answer}"
puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"