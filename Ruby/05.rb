# /************************************************
# *												*
# *	Find the smallest positive number 			*
# *	that is evenly divisible by all of 			*
# *	the numbers from 1 to 20					*
# *												*
# ************************************************/
answer = 20
i = 20
while i > 1
	if answer % i == 0 
		i -= 1
	else
		i = 20
		answer += 20
	end
end

puts answer