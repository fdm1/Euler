# Power digit sum
# Problem 16
# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.

# What is the sum of the digits of the number 2^1000?

timer_start = Time.now
power = 1000
bignum = (2**power).to_s
answer = 0
(0...bignum.length).each {|i| answer += bignum[i].to_i}

puts answer
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"