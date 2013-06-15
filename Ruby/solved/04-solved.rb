
# /************************************************
# *												*
# *	Find the largest palindrome made 			*
# *   from the product of two 3-digit numbers	*
# *												*
# *												*
# ************************************************/
timer_start = Time.now

answer = 0

(100..999).map do |a| 
	(100..999).map do|b| 
		num = (a * b).to_s
		answer = (num == num.reverse && num.to_i > answer) ? num.to_i : answer
	end
end
	
puts answer
puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
