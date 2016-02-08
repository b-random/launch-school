me = { "hair" => "BRN", "eyes" => "BRN", "height" => 6.0, "weight" => 190}

me.each_key { |x| puts x} #or puts me.keys
puts
puts me.values
puts
me.each { |x, y| puts "my #{x}: #{y}" }