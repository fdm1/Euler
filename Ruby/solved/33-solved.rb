# Problem 33
# ==========


#    The fraction ^49/[98] is a curious fraction, as an inexperienced
#    mathematician in attempting to simplify it may incorrectly believe that
#    ^49/[98] = ^4/[8], which is correct, is obtained by cancelling the 9s.

#    We shall consider fractions like, ^30/[50] = ^3/[5], to be trivial
#    examples.

#    There are exactly four non-trivial examples of this type of fraction, less
#    than one in value, and containing two digits in the numerator and
#    denominator.

#    If the product of these four fractions is given in its lowest common
#    terms, find the value of the denominator.
   
# ===============================================================================
timer_start = Time.now

def trivial?(x,y)
	return false if (x >= y) || ((x || y) > 99) || ((x || y) % 1 != 0)
	y_array = y.to_s.split("").map(&:to_f)
	x_array = x.to_s.split("").map(&:to_f)
	return false if (x_array[0] == x_array[1]) || (y_array[0] == y_array[1])

	y_array.each do |ydig|
		return false if ydig == 0
		if (x_array.include?(ydig)) && 
			(((x_array.find {|i| i != ydig}) / 
				(y_array.find {|i| i != ydig})) == (x.to_f / y))
			return [x,y]
		end
	end
	return false
end

trivials = Array.new

11.upto(98) do |x|
	12.upto(99) do |y|
		trivials << [x,y] if trivial?(x,y)
	end
end

x = 1
y = 1
trivials.map {|n| y *= n[1]; x *= n[0]}
y/x.to_f

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"