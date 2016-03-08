^^^^^^^^^^string methods^^^^^^^^^^^^^^^^


gsub(!) - sub out anything for anything 
  if a = 'hello how are you' then a.gsub!('hello', 'howdy') changes
  the string to 'howdy how are you'
_________________________________________________  
delete_at(1) vs delete(1) - delete_at references index while delete
  references the element
_________________________________________________ 
.include? and .cover?  
______________________________________________
insert elemnents at the start of a string 
  x = '4 5 6' so x.prepend('1 2 3 ') = '1 2 3 4 5 6' or <<
_______________________________________________ 
.assoc - reference key within hash and puts it in array
  hash = {'k' => v } : hash.assoc(k) == ['k', v]
____________________________________________________  
each_with_index = use to turn array into hash w/ index as value
_________________________________________________
to find hash values or keys - .key?(), .value?(), or .include? & .member?
_____________________________________________________
to add all values in a hash =  ages.values.inject(:+)
______________________________________________________
keep_if - to delete/ keep all elements in a hash except
          hash.keep_if { |k, v| v < 10} 
 __________________________________________________         
.merge - to combine two hashes
______________________________________________________
index an array - array = [hat, cat, fish, dish]
  array.index { |i| i[0, 2] == ha } #=> hat
 ___________________________________________________ 
.map! - array = ['abccc', 'aaccc']
  array.map! { |s| s[0, 2] } #=> ['ab', 'aa']
_____________________________________________________  
push new element to array - << , .concat or .push  
  .push allows you to add multiple elements .push('a', 'b', 5)
  .concat allows you to add an array .concay(%w(element1 element2))
_______________________________________________________  
.slice! - removes elements from a string
  a = 'hello there'   a.slice!(0..5) #=> a = 'there'
_______________________________________________________  
count string elements with .scan and .count
  a = 'hello there'  a.scan('l').count #=> 2
  
.center(40)  
______________________________________________________
store letter count in hash

  statement = "Abracadabra"

  results = {}
  letters = ('A'..'Z').to_a + ('a'..'z').to_a
  letters.each do |letter|
      letter_frequency = statement.scan(letter).count
      results[letter] = letter_frequency if letter_frequency > 0
  end
  p results
__________________________________________________  
the following block prints a number and then pops 
the last element off  :

  numbers = [1, 2, 3, 4]
  numbers.each do |number|
  p number
  numbers.pop(1)#pops off one at a time
  end
  
  #the first run through prints 1, and pops off 4 
  #the second run prints 2 and pops off 3. Only printed elements
    are still in array.

.shift does same as above, but from the front
___________________________________________________

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end
  
  #this shows how looping works on original array in real time
  #regardless of what has been removed added
  
_____________________________________________________

fibonacci is two num that rotate down until limit is reached

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)#=> 15 is limit
puts "result is #{result}" #=> 21
____________________________________________________

Cap all letters, like .titleize in rails

  words.split.map { |word| word.capitalize}.join(' ')
_____________________________________________________  

Add keys to embedded hash

  munsters = {
    "Herman" => { "age" => 32, "gender" => "male" },
    "Lily" => { "age" => 30, "gender" => "female" },
    "Grandpa" => { "age" => 402, "gender" => "male" },
    "Eddie" => { "age" => 10, "gender" => "male" },
    "Marilyn" => { "age" => 23, "gender" => "female"}
  }
  
  munsters.each do |name, details|
    case details['age']
      when 0..17
        details['age_group'] = 'kid'
      when 18..64
        details['age_group'] = 'adult'
      else
        details['age_group'] = 'senior'
      end
    end
    
______________________________________________  
  
*****why is this...

  def tricky_method(a_string_param, an_array_param)
    a_string_param += "rutabaga"
    an_array_param += ["rutabaga"]
    
    return a_string_param, an_array_param
  end
  
  my_string = "pumpkins"
  my_array = ["pumpkins"]
  my_string, my_array = tricky_method(my_string, my_array)
  
  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"

****better than this...

  def tricky_method(a_string_param, an_array_param)
    a_string_param += "rutabaga"
    an_array_param << "rutabaga"
  end
                            #passing my_array into method mutates 
  my_string = "pumpkins"    #original variable- unpredictable
  my_array = ["pumpkins"]
  tricky_method(my_string, my_array)
  
  puts "My string looks like this now: #{my_string}"
  puts "My array looks like this now: #{my_array}"
_______________________________________________________

.sploit and .join backwards
  sentence = 'Humpty Dumpty sat on a wall.'
  
  
  words = sentence.split(/\W/)
  words.reverse!
  backwards = words.join(' ') + '.'
  puts backwards
______________________________________________

because an array inside a method has the same object
reference as outside the method, elements that are 
shoveled, <<, to the array can be seen inside and outside.

______________________________________________________

  greetings = {a: 'hi'}
  informal_greeting = greetings[:a]
  informal_greeting << ' there'
        # the shovel mutates the original object
  puts informal_greeting #=> 'hi there'
  puts greetings #=> 'hi there
  
if you dont want original object mutated use:
  informal_greeting = greetings[:a].clone 
                    or
  informal_greeting = informal_greeting + 'there'       
_______________________________________________
generate random numbers

def generate_UUID       #UUID = type of computer id number
  characters = []
  (0..9).each { |digit| characters << digit.to_s }
  ('a'..'f').each { |digit| characters << digit.to_s }
  
  uuid = ''
  sections = [8, 4, 4, 4, 12]
  sections.each_with_index do |section, index|
    section.times {uuid += characters.sample }
    uuid += '-' unless index >= sections.size - 1     #.size == .length                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 
  end
  
  uuid
end

p generate_UUID
_________________________________________________________
