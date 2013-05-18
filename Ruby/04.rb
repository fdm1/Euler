
# /************************************************
# *												*
# *	Find the largest palindrome made 			*
# *   from the product of two 3-digit numbers	*
# *												*
# *												*
# ************************************************/

class Euler4

	@@answer = 1

	a = 1
	b = 1
	c = 1

	def product
		return a * b * c
	end

	public 
	def is_palin?(num)
		
		x = 0
		y = num.to_s.length - 1

		while x < y

			if num.to_s[x] != num.to_s[y]
				return false
			else
				x += 1
				y -= 1
			end
		end
		
		if x >= y
			return true
		end

	end

	while a < 9 
		while b < 9 
			while c < 9
				is_palin?(product) ? @@answer = product :
				c += 1
			end
			b += 1
		end
		a += 1
	end

	puts @@answer

end
