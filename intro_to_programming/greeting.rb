def greet(person)
    puts "Hello, " + person
end

greet("John")
#greet(1)


#greeting.rb:2:in `+': no implicit conversion of Fixnum into String (TypeError)
        #from greeting.rb:2:in `greet' #this means it got stuck in 'greet' method
        #from greeting.rb:6:in `<main>'#occured in 'main' context
        
def space_out_letters(person)
  return person.split("").join(" ")
end

def greet(person)
  return "H e l l o, " + space_out_letters(person)
end

def decorate_greeting(person)
  puts "" + greet(person) + ""
end

decorate_greeting("John")
decorate_greeting(1)

H e l l o, J o h n #first one works
#greeting.rb:2:in space_out_letters': undefined methodsplit' for 1:Fixnum (NoMethodError) #.split does not work for the fixnum(1) in "space_out_letters"
#from greeting.rb:6:in greet' from greeting.rb:10:indecorate_greeting'#traces in reverse...
#from greeting.rb:14:in `<main>'#until it gets to main