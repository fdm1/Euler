# Problem 20
# ==========

#    n! means n * (n 1) * ... * 3 * 2 * 1
#    Find the sum of the digits in the number 100!

# ===============================================================================

timer_start = Time.now

x = 1
100.downto(1) {|n| x *= n}


answer = 0

(0...x.to_s.length).each {|n| answer += x.to_s[n].to_i }

puts answer

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"

