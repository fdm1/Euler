# Problem 19
# ==========


#    You are given the following information, but you may prefer to do some
#    research for yourself.

#      * 1 Jan 1900 was a Monday.
#      * Thirty days has September,
#        April, June and November.
#        All the rest have thirty-one,
#        Saving February alone,
#        Which has twenty-eight, rain or shine.
#        And on leap years, twenty-nine.
#      * A leap year occurs on any year evenly divisible by 4, but not on a
#        century unless it is divisible by 400.

#    How many Sundays fell on the first of the month during the twentieth
#    century (1 Jan 1901 to 31 Dec 2000)?

# ===============================================================================


timer_start = Time.now

year = 1900
first_sundays = 0

# 1 = mon ... 7 = sun
# 1 = Jan ... 12 = dec

days = 1

# Go to next month
def add_days_of_month(month, year)
	days = 0
	[1,3,5,7,8,10,12].include?(month) ? days += 31 : nil
	[4,5,9,11].include?(month) ? days += 30 : nil
	if month == 2 
		((year % 4 == 0) && (year > 1900)) ? days += 29 : days += 28
		end
	return days
	end

# If first of month is sunday, add 1 to counter 
def first_sun?(days, year)
	(days % 7 == 0 && year > 1900) ? 1 : 0
	end

# iterate through years
while year < 2001 do
		# iterate through each month, check first day of each month
		(1..12).each do |month|
			first_sundays += first_sun?(days, year)
			days += add_days_of_month(month, year)
			# DEBUG puts "#{year} #{month} #{days} #{days % 7}"
			end
		year += 1
	end

puts first_sundays

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
