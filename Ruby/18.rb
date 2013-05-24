# Problem 18
# ==========


#    By starting at the top of the triangle below and moving to adjacent
#    numbers on the row below, the maximum total from top to bottom is 23.

#                3                                75
#               7 5                             95 64
#              2 4 6                           17 47 82
#             8 5 9 3                        18 35 87 10  
#                                           20 04 82 47 65  
#                                          19 01 23 75 03 34
# 
#       3 + 7 + 4 + 9 = 23         75 + 64 + 82 + 87 + 82 + 75 = 465
# 
#    Find the maximum total from top to bottom of the triangle below:

#                                        75
#                                      95 64
#                                     17 47 82
#                                   18 35 87 10
#                                  20 04 82 47 65
#                                19 01 23 75 03 34
#                               88 02 77 73 07 63 67
#                             99 65 04 28 06 16 70 92
#                            41 41 26 56 83 40 80 70 33
#                          41 48 72 33 47 32 37 16 94 29
#                         53 71 44 65 25 43 91 52 97 51 14
#                       70 11 33 28 77 73 17 78 39 68 17 57
#                      91 71 52 38 17 14 91 43 58 50 27 29 48
#                    63 66 04 68 89 53 67 30 73 16 69 87 40 31
#                   04 62 98 27 23 09 70 98 73 93 38 53 60 04 23

#    NOTE: As there are only 16384 routes, it is possible to solve this problem
#    by trying every route. However, [1]Problem 67, is the same challenge with
#    a triangle containing one-hundred rows; it cannot be solved by brute
#    force, and requires a clever method! ;o)
# ===============================================================================
class Pyramid

  attr_accessor :pyramid, :name, :solution

  def initialize(name, pyramid, solution)
    @name = name
    @solution = solution
    @pyramid = pyramid.split("\n")
    (0...@pyramid.length).each { |r| 
      @pyramid[r] = @pyramid[r].split(" "); 
      (0...@pyramid[r].length).each { |i| 
        @pyramid[r][i] = @pyramid[r][i].to_i 
        }}  
    end
 
  def compare(pyramid)
    #make comparison of sides - This is where the magic's at

    # LARGEST NEXT NUMBER METHOD - TEST 1 = 23, TEST 2 = 461,  FULL = 1064
    left = pyramid[1][0] 
    right = pyramid[1][1]
    
    # SUM OF SIDES METHOD - TEST 1 = 23, TEST 2 = 465, FULL = 883
    # left = 0
    # right = 0
    # (1...pyramid.length).each {|r| 
    #     left += (pyramid[r][0])
    #     right += (pyramid[r][pyramid[r].length-1])
    #     }

    # # AVERAGING SIDES METHOD - TEST 1 = 23, TEST 2 = 465, FULL = 883
    # left = 0
    # right = 0
    # size = 0
    # (1...pyramid.length).each {|r| 
    #     (0...pyramid[r].length).each { |i| 
    #       size += 1.0
    #       i > 0 ? right += pyramid[r][i] : nil;
    #       i < pyramid[r].length - 1 ? left += pyramid[r][i] : nil; 
    #       }
    #     }
    # left /= size
    # right /= size

    return [left, right]
    end


  def move(pyramid, sides)
    left = sides[0]
    right = sides[1]
    #choose left or right, remove end that is being discarded as an option
    left > right ? (1...pyramid.length).each {|r| pyramid[r].pop } : (1...pyramid.length).each {|r| pyramid[r].shift } 
    #remove top rop to shift pyramid up
    pyramid.shift
    end

  def find_path(compare_method)
    answer = 0
    sides = [0,0]
  
      #DEBUG
      # i = 1

    while pyramid.length > 1
      #add top of pyramid to answer
      answer += pyramid[0][0]

      # #DEBUG
      # puts "
      # Row #{i}: Top = #{pyramid[0][0]}, Total = #{answer}

      # " 

      sides = compare(pyramid)

      # #DEBUG        
      puts " #{sides[0] > sides[1] ? "LEFT " : "RIGHT" }   left = #{pyramid[1][0]} || right = #{pyramid[1][1]}
  #{sides[0] > sides[1] ? "#{pyramid[1][0]}" : "#{pyramid[1][1]}" }    lcom = #{sides[0]} || rtcom = #{sides[1]}
      "  
      # sides[0] > sides[1] ? (puts "    GO LEFT") : (puts "    GO RIGHT" ) 
      # i += 1
    
      move(pyramid, sides)

      end
    
    #add last top row to answer
    answer += pyramid[0][0]

    # #DEBUG
    # puts "
    # Row #{i}: Top = #{pyramid[0][0]}, Total = #{answer}


    # "
    puts "
    #{answer == solution ? "CORRECT     " : (solution != "?" ? "WRONG      " : (answer <=  1064 ? "WRONG      " : "MAYBE      ")  )}#{name} = #{answer}"
    end
  end


timer_start = Time.now
# Import pyramid into integer array

  # TEST 1 - SHOULD = 23
test1 = Pyramid.new("test1", "3
7 5
2 4 6
8 5 9 3", 23)
  
  # TEST 2 - SHOULD = 465
test2 = Pyramid.new("test2", "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34", 465)

  # Comment out for testing
full = Pyramid.new("full", "75
95 64
17 47 82
18 35 87 10
20 04 82 47 65
19 01 23 75 03 34
88 02 77 73 07 63 67
99 65 04 28 06 16 70 92
41 41 26 56 83 40 80 70 33
41 48 72 33 47 32 37 16 94 29
53 71 44 65 25 43 91 52 97 51 14
70 11 33 28 77 73 17 78 39 68 17 57
91 71 52 38 17 14 91 43 58 50 27 29 48
63 66 04 68 89 53 67 30 73 16 69 87 40 31
04 62 98 27 23 09 70 98 73 93 38 53 60 04 23", "?")

puts "
=======================================

Test 1

"
puts test1.find_path(1)
puts "=======================================

Test 2

"
puts test2.find_path(1)
puts "=======================================

Full Pyramid

"
puts full.find_path(1)

puts "======================================="

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"


