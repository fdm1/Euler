
# /************************************************
# *												*
# *	Find the largest palindrome made 			*
# *   from the product of two 2-digit numbers	*
# *												*
# *												*
# ************************************************/
timer_start = Time.now

puts (100..999).map{ |a| (100..999).map { |b| a * b }}.flatten.select{ |p| p.to_s == p.to_s.reverse }.sort.reverse.first

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
