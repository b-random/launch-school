contact_data = [["joe@email.com", "123 Main st.", "555-123-4567"],
            ["sally@email.com", "404 Not Found Dr.", "123-234-3454"]]

contacts = {"Joe Smith" => {}, "Sally Johnson" => {}}

puts contact_data[0]
puts
puts contact_data[1]

contacts["Joe Smith"][:email] = contact_data[0][0]
contacts["Joe Smith"][:address] = contact_data[0][1]
contacts["Joe Smith"][:telephone] = contact_data[0][2]

contacts["Sally Johnson"][:email] = contact_data[1][0]
contacts["Sally Johnson"][:address] = contact_data[1][1]
contacts["Sally Johnson"][:telephone] = contact_data[1][2]

puts   
puts contacts["Joe Smith"]
puts
puts contacts["Sally Johnson"]
puts "--------"

puts "Joe's email is: #{contacts["Joe Smith"][:email]} and Sally's phone number is: #{contacts["Sally Johnson"][:telephone]}"

contact_data = ["joe@email.com", "123 main st.", "555-555-5555"]
contacts = {"Joe Smith" => {}}
fields = [:email, :address, :telephone]

contacts.each do |name, hash|
    fields.each do |field|
        hash[field] = contact_data.shift
    end
end