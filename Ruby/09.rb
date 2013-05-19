
# A Pythagorean triplet is a set of three natural numbers, a  b  c, for which,

# a^2 + b^2 = c^2
# For example, 3^2 + 4^2 = 9 + 16 = 25 = 5^2.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

def pythag?(a,b,c)
	a**2 + b**2 == c**2 ? true : false
end

c = 998
b = 1
a = 1

while !pythag?(a,b,c)
	if a + b + c == 1000 
		c -= 1
		(1..((1000-c)/2)).each {|x| 
			b = x
			a = 1000 - b - c
			break if pythag?(a,b,c)
		}
	end
	break if c == 0
end
puts "The answer is #{a * b * c}."




