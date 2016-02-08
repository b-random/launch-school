zero = 0
puts "Before each call"
zero.each { |element| puts element } rescue puts "Can't do that."
puts "After each call"

#If we remove the rescue block, the second puts method will not execute because the program will exit when it runs into the error. a