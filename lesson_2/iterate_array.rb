# return the sum of two numbers

# recieve two numbers
# add the two numbers together
# print the result

# START
# SET number1 = GET number1
# SET number2 = GET number2
# add number1 and number2
# PRINT results

Kernel.puts('Enter a number to add:')
first_number = Kernel.gets.chomp.to_i
Kernel.puts('Enter another number to add:')
sec_number = Kernel.gets.chomp.to_i
sum_it = first_number + sec_number
Kernel.puts('__________')
Kernel.puts('The answer is...')
Kernel.puts(sum_it)
Kernel.puts('___________')
# Array of strings to a string of all the strings concatenated

# take an aray full of strings..
# pull each string out of the array
# concatenate the strings back together as one
# print new string

# START
# SET array
# SET sentence = calling join on array
# PRINT sentence

arr = ['hello', 'there.', 'How', 'are', 'you?']
sentence = arr.join(' ')

Kernel.puts(sentence)
Kernel.puts('_____________')

# a method that takes arrauy of intergers and returns a new
# array with every other element


# START 
# array = integers
# SET odds = an empty array to store iterated numbers
# map over the array with .with_index (the block has two values)
# SET val(from map) & index(from .with_index) in the block
  # IF the index is .odd?
  # put the correlating value in odds variable
# PRINT odds

array = [1, 2, 3, 4, 5, 6, 7, 8, 9] # this pulls based on value, odd or even
odds = []
array.find_all do |n|
  if n % 2 == 1
    odds << n
  end
end
# ___________________OR_______________________________
odds2 = [] # this pulls the index regardless of value
array.map.with_index do |val, ind|
  if ind.even?
    odds2 << val
  end
end

Kernel.p(odds)
Kernel.puts("_________")
Kernel.p(odds2)
  
puts "______________________________"

def add_name(arr, name)
  arr = arr + [name]# mutates array but does not create new
end                 # if replace + with <<, method returns new updated array

names = ['bob', 'kim']
add_name(names, 'jim')
puts names.inspect
