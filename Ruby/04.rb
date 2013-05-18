
# /************************************************
# *												*
# *	Find the largest palindrome made 			*
# *   from the product of two 2-digit numbers	*
# *												*
# *												*
# ************************************************/

puts (100..999).map{ |a| (100..999).map { |b| a * b }}.flatten.select{ |p| p.to_s == p.to_s.reverse }.sort.reverse.first