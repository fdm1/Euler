# Problem 28
# ==========


#    Starting with the number 1 and moving to the right in a clockwise
#    direction a 5 by 5 spiral is formed as follows:

#                                  21 22 23 24 25
#                                  20  7  8  9 10
#                                  19  6  1  2 11
#                                  18  5  4  3 12
#                                  17 16 15 14 13

#    It can be verified that the sum of both diagonals is 101.

#    What is the sum of both diagonals in a 1001 by 1001 spiral formed in the
#    same way?

# ===============================================================================

timer_start = Time.now

# TEST SPIRAL
# spiral = [[21, 22, 23, 24, 25],[20,  7,  8,  9, 10],[19,  6,  1,  2, 11],[18,  5,  4,  3, 12],[17, 16, 15, 14, 13]]

# build sprial array
goal == 1001
spiral = [1]
i = 2
length = 1
width = 1
while spiral.length < 1001

   i += 1
end

# array method for sum of diagonals - assuming that array is a square
class Array
   def sum_diag()
      # leftup to rightdown diag
      diags = 0
      (0...self.length).each do |r|
         diags += self[r][r] + self[r][self.length - 1 - r]
      end
      # remove duplicate midpoint if square length is odd
      diags -= self[self.length/2][self.length/2] if self.length % 2 != 0
      diags
   end
end

puts spiral.sum_diag

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"