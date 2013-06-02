# Problem 24
# ==========


#    A permutation is an ordered arrangement of objects. For example, 3124 is
#    one possible permutation of the digits 1, 2, 3 and 4. If all of the
#    permutations are listed numerically or alphabetically, we call it
#    lexicographic order. The lexicographic permutations of 0, 1 and 2 are:

#                        012   021   102   120   201   210

#    What is the millionth lexicographic permutation of the digits 0, 1, 2, 3,
#    4, 5, 6, 7, 8 and 9?
# ===============================================================================

timer_start = Time.now


perms = []
while perms.length <= 1_000_000 
	perms = ["O",1,2,3,4,5,6,7,8,9].to_a.permutation(10).map(&:join)
end
puts perms[999999]


puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
