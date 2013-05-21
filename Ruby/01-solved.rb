# /*************************************
# *
# *	Find the sum of all the multiples of 3 or 5 below 1000
# *
# **************************************/
timer_start = Time.now
total = 0
(1...1000).each { |x| x % 3 == 0 || x % 5 == 0 ? total += x : x }
puts total

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
