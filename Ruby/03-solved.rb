
# /*************************************
# *
# *	Find the largest prime factor of the number 600851475143
# *
# **************************************/

target = 600851475143

i = 2.0

target % i == 0 ? target /= i : i += 1 while target > i 

puts i
