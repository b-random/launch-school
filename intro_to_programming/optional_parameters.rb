#using a hash to improve functions

def greeting(name, options = {})
    if options.empty?
        puts "Hi, my name is #{name}"
    else
        puts "Hi, my name is #{name} and I'm #{options[:age]} years old and I live in #{options[:city]}."
    end
end
     
greeting("Bob")
greeting("Bob", {age: 62, city: "New York"})
greeting("Bob", age: 62, city: "New York City") #hash {brackets} not required when hash is last argument
