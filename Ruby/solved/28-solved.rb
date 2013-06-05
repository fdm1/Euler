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
size = 1001
spiral = [[1]]
i = 2
while spiral.length < size
   # move to the right
   spiral[0].push(i) 
   i += 1
   spiral.push([])
   # move down right side
   (spiral.length - 2).times {|x| spiral[x + 1].push(i) ; i += 1}
   # move to the left on bottom
   spiral.length.times {|x| spiral.last.unshift(i) ; i += 1}
   spiral.last.unshift(i)
   i += 1
   # move up the left side
   ((spiral.length)-1).times {|x| spiral[spiral.length - x - 2].unshift(i) ; i += 1}
   spiral.unshift([])
   spiral.last.length.times {|x| spiral[0].push(i) ; i += 1}
end

# array method for sum of diagonals - assuming that array is a square
class Array
   def sum_diag
      # leftup to rightdown diag
      diags = 0
      (0...self.length).each do |r|
         diags += self[r][r] + self[r][self.length - 1 - r]
      end
      # remove duplicate midpoint if square length is odd
      diags -= self[self.length/2][self.length/2] if self.length % 2 != 0
      diags
   end
   def spiral(size)
      sprl = [[1]]
      i = 2
      while sprl.length < 6
         # move to the right
         sprl[0].push(i) 
         i += 1
         sprl.push([])
         # move down right side
         (sprl.length - 2).times {|x| sprl[x + 1].push(i) ; i += 1}
         # move to the left on bottom
         sprl.length.times {|x| sprl.last.unshift(i) ; i += 1}
         sprl.last.unshift(i)
         i += 1
         # move up the left side
         ((sprl.length)-1).times {|x| sprl[sprl.length - x - 2].unshift(i) ; i += 1}
         sprl.unshift([])
         sprl.last.length.times {|x| sprl[0].push(i) ; i += 1}
      end
   end
end

puts spiral.sum_diag

puts "
Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"