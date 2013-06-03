class Pyramid

  attr_accessor :pyramid, :name, :solution, :sides

  def initialize(name, pyramid, solution)
    @name = name
    @solution = solution
    @pyramid = pyramid.split("\n")
    (0...@pyramid.length).each { |r| 
      @pyramid[r] = @pyramid[r].split(" "); 
      (0...@pyramid[r].length).each { |i| 
        @pyramid[r][i] = @pyramid[r][i].to_i 
        }}  
    @sides = []
    end

 
  def compare
    #make comparison of sides - This is where the magic's at

    # WRONG - LARGEST NEXT NUMBER METHOD - TEST 1 = CORRECT, TEST 2 = 461,  FULL = 1064
      left = pyramid[1][0]
      right = pyramid[1][1]
    
    # WRONG - SUM OF SIDES METHOD - TEST 1 AND 2 CORRECT, FULL = 883
      left = 0
      right = 0
      (1...pyramid.length).each {|r| 
          left += (pyramid[r][0])
          right += (pyramid[r][pyramid[r].length-1])
          }

    # WRONG - AVERAGING SIDES METHOD - TEST 1 AND 2 CORRECT, FULL = 883
      left = 0
      right = 0
      size = 0
      (1...pyramid.length).each {|r| 
          (0...pyramid[r].length).each { |i| 
            size += 1.0
            i > 0 ? right += pyramid[r][i] : nil;
            i < pyramid[r].length - 1 ? left += pyramid[r][i] : nil; 
            }
          }
      left /= size
      right /= size

    # WRONG - CHOOSE SIDE BASED ON CHOICES 2 ROWS DOWN UNLESS MIDDLE IS LARGEST - TEST 1 AND 2 CORRECT, FULL = 960
      if pyramid.length > 2
        pyramid[2][0] >= pyramid[2][1] ? (left = pyramid[2][0]) : (left = pyramid[2][1] )
        pyramid[2][2] >= pyramid[2][1] ? (right = pyramid[2][2]) : (right = pyramid[2][1])
        pyramid[2][1] > (pyramid[2][0] && pyramid[2][2]) ? (left = pyramid[1][0]; right = pyramid[1][1]) : nil
      else
        left = pyramid[1][0]
        right = pyramid[1][1]
      end

    sides = [left, right]
    end

  def move(sides)
    #choose left or right, remove end that is being discarded as an option
    
    sides[0] > sides[1] ? (1...pyramid.length).each {|r| pyramid[r].pop } : (1...pyramid.length).each {|r| pyramid[r].shift }
    #remove top rop to shift pyramid up
    pyramid.shift
    end

  def find_path
    puts "\n=======================================\n\n#{name} Triangle\n\n"
    answer = 0
    
    while pyramid.length > 1
      #add top of pyramid to answer
      answer += pyramid[0][0]

      sides = compare

      #DEBUG        
      puts "   #{answer}     left = #{pyramid[1][0]} || right = #{pyramid[1][1]}\n  #{ sides[0] > sides[1] ? "LEFT " : "RIGHT" }   lcom = #{sides[0]} || rtcom = #{sides[1]}\n\n"  
    
      move(sides)

      end
    
    #add last top row to answer
    answer += pyramid[0][0]

    puts "\n    #{answer == solution ? "CORRECT     " : (solution != "?" ? "WRONG      " : (answer <=  1064 ? "WRONG      " : "MAYBE      ")  )}#{name} = #{answer}\n\n======================================="
    
    end
  end

    # DIFFERENT METHODS OF COMPARISON
    
    # # WRONG - LARGEST NEXT NUMBER METHOD - TEST 1 = CORRECT, TEST 2 = 461,  FULL = 1064
    #   left = pyramid[1][0]
    #   right = pyramid[1][1]
    
    # # WRONG - SUM OF SIDES METHOD - TEST 1 AND 2 CORRECT, FULL = 883
    #   left = 0
    #   right = 0
    #   (1...pyramid.length).each {|r| 
    #       left += (pyramid[r][0])
    #       right += (pyramid[r][pyramid[r].length-1])
    #       }

    # # WRONG - AVERAGING SIDES METHOD - TEST 1 AND 2 CORRECT, FULL = 883
    #   left = 0
    #   right = 0
    #   size = 0
    #   (1...pyramid.length).each {|r| 
    #       (0...pyramid[r].length).each { |i| 
    #         size += 1.0
    #         i > 0 ? right += pyramid[r][i] : nil;
    #         i < pyramid[r].length - 1 ? left += pyramid[r][i] : nil; 
    #         }
    #       }
    #   left /= size
    #   right /= size

    # # WRONG - CHOOSE SIDE BASED ON CHOICES 2 ROWS DOWN UNLESS MIDDLE IS LARGEST - TEST 1 AND 2 CORRECT, FULL = 960
    #   if pyramid.length > 2
    #     pyramid[2][0] >= pyramid[2][1] ? (left = pyramid[2][0]) : (left = pyramid[2][1] )
    #     pyramid[2][2] >= pyramid[2][1] ? (right = pyramid[2][2]) : (right = pyramid[2][1])
    #     pyramid[2][1] > (pyramid[2][0] && pyramid[2][2]) ? (left = pyramid[1][0]; right = pyramid[1][1]) : nil
    #   else
    #     left = pyramid[1][0]
    #     right = pyramid[1][1]
    #   end

  

