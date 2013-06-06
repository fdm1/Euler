
# Problem 31
# ==========


#    In England the currency is made up of pound, -L-, and pence, p, and there
#    are eight coins in general circulation:

#      1p, 2p, 5p, 10p, 20p, 50p, -L-1 (100p) and -L-2 (200p).

#    It is possible to make -L-2 in the following way:

#      1 * -L-1 + 1 * 50p + 2 * 20p + 1 * 5p + 1 * 2p + 3 * 1p

#    How many different ways can -L-2 be made using any number of coins?

# ===============================================================================
timer_start = Time.now

class Array
	def eqL2?
		
		# coin array slot definitions:
		# [0] = 1p
		# [1] = 2p
		# [2] = 5p
		# [3] = 10p
		# [4] = 20p
		# [5] = 50p
		# [6] = 100p
		# [7] = 200p
		
	self[0] * 1 + self[1] * 2 + self[2] * 5 + self[3] * 10 + self[4] * 20 + self[5] * 50 + self[6] * 100 + self[7] * 200 == 200
	end
end

answer = 0

(0..200).each do |p1| 
	(0..100).each do |p2|
		break if p1 + p2 * 2 > 200
		(0..40).each do |p5|
			break if p1 + p2 * 2 + p5 * 5 > 200
			(0..20).each do |p10|
				break if p1 + p2 * 2 + p5 * 5  + p10 * 10 > 200
				(0..10).each do |p20|
					break if p1 + p2 * 2 + p5 * 5  + p10 * 10 + p20 * 20 > 200
					(0..4).each do |p50|
						break if p1 + p2 * 2 + p5 * 5  + p10 * 10 + p20 * 20 + p50 * 50 > 200
						(0..2).each do |p100|
							(0..1).each do |p200|
								[p1, p2, p5, p10, p20, p50, p100, p200].eqL2? ? answer += 1 : nil
							end
						end
					end
				end
			end
		end
	end
end

puts answer

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"