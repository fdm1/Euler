
# /*************************************
# *
# *	Find the largest prime factor of the number 600851475143
# *
# **************************************/

class Euler3

	TARGET = 600851475143
	mod = TARGET

	i = 2.0

	while mod > i do

		while mod % i == 0 do
			mod = mod / i 
		end

		i = i + 1
	end

	puts i

end
