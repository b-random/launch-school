def check_in(word)
    if /lab/ =~ word.downcase
        puts word
    else
        puts "<unfound>"
    end
end

check_in("laboratory")
check_in("experiment")
check_in("Pans Labyrinth")
check_in("elaborate")
check_in("polar bear")