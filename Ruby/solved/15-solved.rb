# Starting in the top left corner of a 2x2 grid, and only being able to move to the right and down, there are exactly 6 routes to the bottom right corner.

# How many such routes are there through a 20x20 grid?

#solution found at http://johnnycoder.com/blog/2010/07/05/project-euler-15-ruby/
timer_start = Time.now

class Integer
  # http://rosettacode.org/wiki/Factorial#Ruby
  def factorial
    (1..self).reduce(1, :*)
  end
end
rows, cols = 20, 20

puts (rows+cols).factorial / (rows.factorial * cols.factorial)

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"
