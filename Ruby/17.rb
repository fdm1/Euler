# If the numbers 1 to 5 are written out in words: one, two, three, four, five, then there are 3 + 3 + 5 + 4 + 4 = 19 letters used in total.

# If all the numbers from 1 to 1000 (one thousand) inclusive were written out in words, how many letters would be used?

# NOTE: Do not count spaces or hyphens. For example, 342 (three hundred and forty-two) contains 23 letters and 115 (one hundred and fifteen) contains 20 letters. The use of "and" when writing out numbers is in compliance with British usage.

timer_start = Time.now

# number of letters in every hundred of singles plus the pre-hundred counter
singles = "OneTwoThreeFourFiveSixSevenEightNine".length * 9

# Number of letters in every hundred set of teens
teens = "TenElevenTwelveThirteenFourteenFifteenSixteenSeventeenEighteenNineteen".length

# Number of letters in every twenty-ninety word for a set of 100
twentyup = ("TwentyThirtyFortyFiftySixtySeventyEightyNinety".length) * 10

# Number of letters in all hundred
hundreds = "hundredand".length * 100 * 9 + twentyup * 9 + teens * 9 + singles * 9 + "OneTwoThreeFourFiveSixSevenEightNine".length * 100

thousand = "onethousand".length

puts thousand + hundreds + twentyup + teens + singles

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"

