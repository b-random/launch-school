#USE EXCEPTIONS begin/rescue/end as a fail safe
#Exception handling is a structure used to handle 
#the possibility of an error occurring in a program.
#It is a way of handling the error by changing the 
#flow of control without exiting the program entirely.

names = ["bob", "joe", "steve", nil, "frank"]

names.each do |name|
    begin 
        puts "#{name}'s name has #{name.length} letters in it."
    rescue
        puts "Something went wrong!"
    end
end

#We've used a begin/rescue/end block to handle any exceptions that may happen within our block. In this example, we have a nil value in our array. Therefore, when we go to call .length on nil we get an error. When an exception, or error, is raised, the rescue block will execute and then the program will continue to run as it normally would. If we didn't have the rescue block there, our program would stop once it hit the exception and we would lose the rest of our print-out.
