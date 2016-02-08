def has_a_b?(string)
    if /b/.match(string)
        puts "We have a match!"
    else
        puts "No match."
    end
end

has_a_b?("basketball")
has_a_b?("football")
has_a_b?("golf")
has_a_b?("hockey")
