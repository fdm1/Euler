
# /*************************************
# *
# *	Find the largest prime factor of the number 600851475143
# *
# **************************************/
timer_start = Time.now

target = 600851475143

i = 3.0

target % i == 0 ? target /= i : i += 2 while target > i 

puts i

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
