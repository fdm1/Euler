

# /*************************************
# *
# *	find the sum of the evem terms in the 
# *	Fibonacci sequence whose values do not exceed four million
# *
# **************************************/
timer_start = Time.now
x = 0
a = 1
b = 2
while b <= 4_000_000 
	b % 2 == 0 ? x += b : nil
	a, b = b, a + b
end
puts x

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
