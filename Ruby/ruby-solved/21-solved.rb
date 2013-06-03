
# Problem 21
# ==========


#    Let d(n) be defined as the sum of proper divisors of n (numbers less than
#    n which divide evenly into n).
#    If d(a) = b and d(b) = a, where a b, then a and b are an amicable pair and
#    each of a and b are called amicable numbers.

#    For example, the proper divisors of 220 are 1, 2, 4, 5, 10, 11, 20, 22,
#    44, 55 and 110; therefore d(220) = 284. The proper divisors of 284 are 1,
#    2, 4, 71 and 142; so d(284) = 220.

#    Evaluate the sum of all the amicable numbers under 10000.

# ===============================================================================

timer_start = Time.now
Amicables = []

i = 1
answer = 0

def sum_amicable(n)
  sum = 0
  (n/2).downto(1) { |x| n % x == 0 ? sum += x : nil }
  return sum
  end

def amicable_check(n)
  if (n == sum_amicable(sum_amicable(n))) && (n != sum_amicable(n))
    Amicables << n if !Amicables.include?(n)
    Amicables << sum_amicable(n) if !Amicables.include?(sum_amicable(n))
    end
  end  

while i < 10001
  amicable_check(i)
  i += 1
  end

Amicables.each {|x| answer += x }

puts answer  

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"