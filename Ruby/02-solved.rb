

# /*************************************
# *
# *	find the sum of the evem terms in the 
# *	Fibonacci sequence whose values do not exceed four million
# *
# **************************************/

x = 0
a = 1
b = 2
while b <= 4_000_000 
	b % 2 == 0 ? x += b : nil
	b = a + b
	a = b - a
end
puts x
