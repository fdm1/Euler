# Problem 22
# ==========


#    Using [1]names.txt (right click and 'Save Link/Target As...'), a 46K text
#    file containing over five-thousand first names, begin by sorting it into
#    alphabetical order. Then working out the alphabetical value for each name,
#    multiply this value by its alphabetical position in the list to obtain a
#    name score.

#    For example, when the list is sorted into alphabetical order, COLIN, which
#    is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So,
#    COLIN would obtain a score of 938 * 53 = 49714.

#    What is the total of all the name scores in the file?

#    "

# References

#    Visible links
#    1. http://projecteuler.net/project/names.txt
# ===============================================================================

timer_start = Time.now

# Import names csv, clean up file and sort names
   f = File.open("files/names.txt")
   names = f.read.split(",")
   names.each {|x| x.gsub!('"', '')}
   names.sort!

# Found method to convert letter to number
# http://techblogthing.blogspot.com/2012/09/turning-letters-into-numbers-in-ruby.html
class String
    def to_number
        number = self.tr("A-Z", "1-9a-q").to_i(27)
        number -= 1 if number > 27
        return number
    end
end


def score(place, name)
   sum = 0
   (0...name.length).each {|letter| sum += name[letter].to_number}
   return sum *= place
end

answer = 0
place = 1
names.each {|name| answer += score(place, name); place +=1 }

puts answer

puts "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"