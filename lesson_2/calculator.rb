

# ask the user for two numbers
# ask for the operation
# perform operation on two numbers
# output the numbers
def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  num.to_i != 0
end
  
def op_method(call)
  case call
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

prompt('Welcome to Calculator!  Choose a code-name:')

code_name = ''
loop do
  code_name = Kernel.gets().chomp()

  if code_name.empty?
    prompt('Seriously, you need to choose a code-name!')
  else
    break
  end
end
  
prompt("Ok #{code_name}, lets get our math on!!!")

loop do # main loop
  number_one = '' # If number_one is not set as a variable outside the
  # 'loop do' loop, then the variable is not accessible anywhere else
    loop do
    prompt('What is the first number: ')
    number_one = Kernel.gets().chomp()
  
    if valid_number?(number_one) 
      break
    else
      prompt('That is not a valid number...')
    end
    end

  number_two = ''
  loop do
    prompt('What is the second number: ')
    number_two = Kernel.gets().chomp
  
    if valid_number?(number_two)
      break
    else
      Kernel.puts('That is not a valid number...')
    end
  end

# Kernel.puts(number_one.inspect) #returns value with attached whitespace annotation- see what isnt visible
# Kernel.puts("the numbers are: #{number_one} & #{number_two}")
  op_prompt = <<-MSG
    Enter number of operation to perform:
    1) add
    2) subtract
    3) multiply
    4} divide
  MSG
  
  prompt(op_prompt)
  
  op = ''
  loop do
    op = Kernel.gets().chomp()
    
    if %w(1 2 3 4).include?(op)
      break
    else
      prompt('Must choose 1, 2, 3 or 4:')
    end
  end
  
  
      
  prompt("#{op_method(op)} your numbers...")
  

  
  result = case (op)
           when '1'
             number_one.to_i + number_two.to_i
           when '2'
             number_one.to_i - number_two.to_i
           when '3'
             number_one.to_i * number_two.to_i
           when '4'
             number_one.to_f / number_two.to_f
           end

  Kernel.puts('_________')
  prompt("The result is: #{result}")
  Kernel.puts('_________')
  
  prompt('Would you like to perform another calculation?  (Y to calculate again) ')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt('Thanks for using my calculator... Adios!')

    

  
  