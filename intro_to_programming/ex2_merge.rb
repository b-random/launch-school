hash_one = { "a"=> 1, "b"=> 2, "c"=> 3}
hash_two = { "x"=> 22, "y"=> 23, "z"=> 24}

puts hash_one.merge(hash_two)
puts hash_one
puts hash_one.merge!(hash_two) # the ! perminently merges hash_two into hash_one
puts hash_one #now includes hash_two elements